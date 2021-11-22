#include "batt.h"
#include <stdio.h>

int set_batt_from_ports(batt_t *batt){
	if (BATT_VOLTAGE_PORT < 0) {
		return 1;
	}
	if (BATT_VOLTAGE_PORT >= 7600) {
		batt->mlvolts = BATT_VOLTAGE_PORT/2;
		batt->percent = 100;
	} else if (BATT_VOLTAGE_PORT <= 6000) {
		batt->mlvolts = BATT_VOLTAGE_PORT/2;
		batt->percent = 0;
	} else {
		batt->mlvolts = BATT_VOLTAGE_PORT/2;
		batt->percent = ((BATT_VOLTAGE_PORT/2)-3000)/8;
	}
	if ((BATT_STATUS_PORT >> 2) & 1 ){
		batt->mode = 2; //percent
	} else {
		batt->mode = 1; //volts
	}
	return 0;
}
// Uses the two global variables (ports) BATT_VOLTAGE_PORT and
// BATT_STATUS_PORT to set the fields of the parameter 'batt'.  If
// BATT_VOLTAGE_PORT is negative, then battery has been wired wrong;
// no fields of 'batt' are changed and 1 is returned to indicate an
// error.  Otherwise, sets fields of batt based on reading the voltage
// value and converting to precent using the provided formula. Returns
// 0 on a successful execution with no errors. This function DOES NOT
// modify any global variables but may access global variables.
//
// CONSTRAINT: Uses only integer operations. No floating point
// operations are used as the target machine does not have a FPU.
// 
// CONSTRAINT: Limit the complexity of code as much as possible. Do
// not use deeply nested conditional structures. Seek to make the code
// as short, and simple as possible. Code longer than 40 lines may be
// penalized for complexity.

int set_display_from_batt(batt_t batt, int *display) {
	int bitPatterns[10] = {0b0111111, 0b0000110, 0b1011011, 0b1001111, 0b1100110, 0b1101101, 0b1111101, 0b0000111, 0b1111111, 0b1101111};
	int final = 0b000000000000000000000000;
	int rDigit, mDigit, lDigit;
	if (batt.mode == 2) {
		rDigit = batt.percent % 10;
		mDigit = (batt.percent/10) % 10;
		lDigit = (batt.percent/100) % 10;
	} else {
		int rounding = batt.mlvolts % 10;
		rDigit = (batt.mlvolts/10) % 10;
		mDigit = (batt.mlvolts/100) % 10;
		lDigit = (batt.mlvolts/1000) % 10;
		if (rounding > 4) {
			rDigit++;
		}
	}
	if (batt.percent > 89) { //sets the binary digits for spots 28-24
		final = final | 0b11111 << 24;
	} else if (batt.percent > 69) {
		final = final | 0b01111 << 24;
	} else if (batt.percent > 49) {
		final = final | 0b00111 << 24;
	} else if (batt.percent > 29) {
		final = final | 0b00011 << 24;
	} else if (batt.percent > 5) {
		final = final | 0b00001 << 24;
	}
	if (batt.mode == 2) {
		final = final | 0b001 << 21;
		if (batt.percent < 100 && batt.percent >= 10) {
			final = final | 0b0000000 << 14 | bitPatterns[mDigit] << 7 | bitPatterns[rDigit] << 0;
		} else if (batt.percent < 10) {
			final = final | 0b0000000 << 14 | 0b0000000 << 7 | bitPatterns[rDigit] << 0;
		} else {
			final = final | bitPatterns[lDigit] << 14 | bitPatterns[mDigit] << 7 | bitPatterns[rDigit] << 0;
		}
	} else {
		final = final | 0b110 << 21;
		final = final | bitPatterns[lDigit] << 14 | bitPatterns[mDigit] << 7 | bitPatterns[rDigit] << 0;
	}
	*display = final;
	return 0;
}
/*Create an array of bit masks for each of the digits 0-9. The 0th element of the array contains a bit mask like 0b0111111 which represents the bits that should be set for a 0 digit, the 1th element of this array has a mask like 0b0000011 which are the bits to be set for a 1. There should be ten entries in this array in indices 0-9.
Use modulo to determine the integer value for right, middle, and left digits for the display from volts or percent. Each digit should have a value from 0-9 and be Stored in its own variable.
Start with an integer variable of 0 (all 0 bits).
Use left digit variable to index into your array of masks to determine the bits that should be set for it and shift them over an appropriate amount combining with the existin display bits.
Combining bits here is a logical operation of setting all bits that are one in the mask to 1 in the display variable.
Repeat this process for the middle and right digits shifting left by appropriate to where the digits should line up.
There are several special cases to consider such as leading 0's in a percent should be blanks so nothing should be drawn.
Don't forget to set the additional bits like the decimal place, the V/% indicator, and the level bars for the visual indicator.
Importantly make code as simple as possible as the target CPU has a limited amount of RAM and longer codes will occupy more RAM. Avoid nesting conditionals very deeply: if/else if/else structures are fine but nesting a conditional within this will be penalized.
*/
// Alters the bits of integer pointed to by 'display' to reflect the
// data in struct param 'batt'.  Does not assume any specific bit
// pattern stored at 'display' and completely resets all bits in it on
// successfully completing.  Selects either to show Volts (mode=1) or
// Percent (mode=2). If Volts are displayed, only displays 3 digits
// rounding the lowest digit up or down appropriate to the last digit.
// Calculates each digit to display changes bits at 'display' to show
// the volts/percent according to the pattern for each digit. Modifies
// additional bits to show a decimal place for volts and a 'V' or '%'
// indicator appropriate to the mode. In both modes, places bars in
// the level display as indicated by percentage cutoffs in provided
// diagrams. This function DOES NOT modify any global variables but
// may access global variables. Always returns 0.
// 
// CONSTRAINT: Limit the complexity of code as much as possible. Do
// not use deeply nested conditional structures. Seek to make the code
// as short, and simple as possible. Code longer than 85 lines may be
// penalized for complexity.

int batt_update() {
	int temp = 0b000000000000000000000000;
	batt_t otherTemp = {};
	int proceed = set_batt_from_ports(&otherTemp);
	if (proceed == 0) {
		set_display_from_batt(otherTemp, &temp);
		BATT_DISPLAY_PORT = temp;
		return 0;
	} else {
		return 1;
	}
}
// Called to update the battery meter display.  Makes use of
// set_batt_from_ports() and set_display_from_batt() to access battery
// voltage sensor then set the display. Checks these functions and if
// they indicate an error, does NOT change the display.  If functions
// succeed, modifies BATT_DISPLAY_PORT to show current battery level.
// 
// CONSTRAINT: Does not allocate any heap memory as malloc() is NOT
// available on the target microcontroller.  Uses stack and global
// memory only.