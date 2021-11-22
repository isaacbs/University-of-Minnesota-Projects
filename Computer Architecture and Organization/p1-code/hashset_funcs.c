// hashset_funcs.c: utility functions for operating on hash sets. Most
// functions are used in the hashset_main.c which provides an
// application to work with the functions.

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "hashset.h"

long hashcode(char key[]){
  union {
    char str[8];
    long num;
  } strnum;
  strnum.num = 0;

  for(int i=0; i<8; i++){
    if(key[i] == '\0'){
      break;
    }
    strnum.str[i] = key[i];
  }
  return strnum.num;
}
// PROVIDED: Compute a simple hash code for the given character
// string. The code is "computed" by casting the first 8 characters of
// the string to a long and returning it. The empty string has hash
// code 0. If the string is a single character, this will be the ASCII
// code for the character (e.g. "A" hashes to 65).  Longer strings
// will have numbers which are the integer interpretation of up to
// their first 8 bytes.  ADVANTAGE: constant time to compute the hash
// code. DISADVANTAGE: poor distribution for long strings; all strings
// with same first 8 chars hash to the same location.

void hashset_init(hashset_t *hs, int table_size) {
	hs->table_size = table_size;
	hs->item_count = 0;
	hs->table = malloc(sizeof(hashnode_t)*table_size);
	for(int i = 0; i < table_size; i++) {
		hs->table[i] = NULL;
	}
	hs->order_first = NULL;
	hs->order_last = NULL;
}
// Initialize the hash set 'hs' to have given size and item_count
// 0. Ensures that the 'table' field is initialized to an array of
// size 'table_size' and is filled with NULLs. Also ensures that the
// first/last pointers are initialized to NULL

int hashset_contains(hashset_t *hs, char item[]) {
	int found = 0;
	int index = (hashcode(item)) % (hs->table_size);
	if (index < 0){
		index = index*-1;
	}
	hashnode_t *ptr = hs->table[index];
	while (ptr != NULL) {
		if (strcmp(ptr->item, item) == 0) {
			found = 1;
			return found;
		} else {
			ptr = ptr->table_next;
		}
	}
	return found;
}

// Returns 1 if the parameter `item` is in the hash set and 0
// otherwise. Uses hashcode() and field `table_size` to determine
// which index in table to search.  Iterates through the list at that
// table index using strcmp() to check for `item`. NOTE: The
// `hashcode()` function may return positive or negative
// values. Negative values are negated to make them positive. The
// "bucket" (index in hs->table) for `item` is determined by with
// 'hashcode(key) modulo table_size'.

int hashset_add(hashset_t *hs, char item[]){
	if (hashset_contains(hs, item) == 1) {
		return 0;
	} else {
		int index = (hashcode(item)) % (hs->table_size);
		if (index < 0){
			index = index*-1;
		}
		hashnode_t *new = malloc(sizeof(hashnode_t));
		strcpy(new->item, item);
		new->table_next = hs->table[index];
		new->order_next = NULL;
		hs->table[index] = new;
		if (hs->item_count == 0) {
			hs->order_first = new;
			hs->order_last = new;
		} else {
			hs->order_last->order_next = new;
			hs->order_last = new;
		}

		hs->item_count = hs->item_count +1;
		return 1;
	}
}
// If the item is already present in the hash set, makes no changes to
// the hash set and returns 0. hashset_contains() may be used for
// this. Otherwise determines the bucket to add `item` at via the same
// process as in hashset_contains() and adds it to the FRONT of the
// list at that table index. Adjusts the `hs->order_last` pointer to
// append the new item to the ordered list of items. If this is the
// first item added, also adjsuts the `hs->first` pointer. Updates the
// `item_count` field and returns 1 to indicate a successful addition.
//
// NOTE: Adding items at the front of each bucket list allows much
// simplified logic that does not need any looping/iteration.

void hashset_free_fields(hashset_t *hs) {
	hashnode_t *ptr = hs->order_first;
	while(ptr != NULL) {
		hashnode_t *temp = ptr;
		ptr = ptr->order_next;
		free(temp);
	}
	free(hs->table);
	hs->item_count = 0;
	hs->table_size = 0;
	hs->order_first = NULL;
	hs->order_last = NULL;
}
// De-allocates nodes/table for `hs`. Iterates through the ordered
// list of the hash set starting at the `order_first` field and
// de-allocates all nodes in the list. Also free's the `table`
// field. Sets all relevant fields to 0 or NULL as appropriate to
// indicate that the hash set has no more usable space. Does NOT
// attempt to de-allocate the `hs` itself as it may not be
// heap-allocated (e.g. in the stack or a global).

void hashset_show_structure(hashset_t *hs) {
	printf("item_count: %d\n", hs->item_count);
	printf("table_size: %d\n", hs->table_size);
	if (hs->order_first->item == NULL) {
		printf("order_first: NULL\n");
	} else {
		printf("order_first: %s\n", hs->order_first->item);
	}
	if (hs->order_last->item == NULL) {
		printf("order_last : NULL\n");
	} else {
		printf("order_last : %s\n", hs->order_last->item);
	}
	printf("load_factor: %.4f\n", (float) (hs->item_count)/(hs->table_size));
	for(int i = 0; i < hs->table_size; i++) {
		hashnode_t *ptr = hs->table[i];
		printf("[%2d] : ", i);
		char *next;
		while(ptr != NULL) {
			if (hs->order_last == ptr) {
				next = NULL;
			} else {
				next = ptr->order_next->item;
			}
			if (next == NULL) {
				printf("{%ld %s >>NULL} ", hashcode(ptr->item), ptr->item);
			} else {
				printf("{%ld %s >>%s} ", hashcode(ptr->item), ptr->item, next);
			}
			ptr = ptr->table_next;
		}
		printf("\n");
	}

}
// Displays detailed structure of the hash set. Shows stats for the
// hash set as below including the load factor (item count divided
// by table_size) to 4 digits of accuracy.  Then shows each table
// array index ("bucket") on its own line with the linked list of
// items in the bucket on the same line. 
// 
// EXAMPLE:
// item_count: 4
// table_size: 5
// order_first: Rick
// order_last : Tinyrick
// load_factor: 0.8000
// [ 0] : {7738144525137111380 Tinyrick >>NULL} 
// [ 1] : 
// [ 2] : 
// [ 3] : {125779953153363 Summer >>Tinyrick} {1801677138 Rick >>Morty} 
// [ 4] : {521644699469 Morty >>Summer} 
//
// NOTES:
// - Uses format specifier "[%2d] : " to print the table indices
// - Nodes in buckets have the following format:
//   {1415930697 IceT >>Goldenfold}
//    |          |       |        
//    |          |       +-> order_next->item OR NULL if last node
//    |          +->`item` string     
//    +-> hashcode("IceT"), print using format "%ld" for 64-bit longs
// 

void hashset_write_items_ordered(hashset_t *hs, FILE *out){
	hashnode_t *ptr = hs->order_first;
	int i = 1;
	while (ptr != NULL) {
		fprintf(out, "  %d %s\n", i, ptr->item);
		i = i+1;
		ptr = ptr->order_next;
	}
}
// Outputs all elements of the hash set according to the order they
// were added. Starts at the `order_first` field and iterates through
// the list defined there. Each item is printed on its own line
// preceded by its add position with 1 for the first item, 2 for the
// second, etc. Prints output to `FILE *out` which should be an open
// handle. NOTE: the output can be printed to the terminal screen by
// passing in the `stdout` file handle for `out`.

void hashset_save(hashset_t *hs, char *filename) {
	FILE *out = fopen(filename, "w");
	if (out == NULL) {
		printf("ERROR: could not open file '%s'\n", filename);
		return;
	}
	fprintf(out, "%d %d\n", hs->table_size, hs->item_count);
	hashset_write_items_ordered(hs, out);
	fclose(out);

}
// Writes the given hash set to the given `filename` so that it can be
// loaded later.  Opens the file and writes its 'table_size' and
// 'item_count' to the file. Then uses the hashset_write_items_ordered()
// function to output all items in the hash set into the file.
// EXAMPLE FILE:
// 
// 5 6
//   1 Rick
//   2 Morty
//   3 Summer
//   4 Jerry
//   5 Beth
//   6 Tinyrick
// 
// First two numbers are the 'table_size' and 'item_count' field and
// remaining text is the output of hashset_write_items_ordered();
// e.g. insertion position and item.

int hashset_load(hashset_t *hs, char *filename) {
	FILE *file = fopen(filename, "r");
	if (file == NULL) {
		printf("ERROR: could not open file '%s'\n", filename);
		return 0;
	}
	hashset_free_fields(hs);
	int size; 
	int num;
	fscanf(file, "%d %d", &size, &num);
	hashset_init(hs, size);
	for(int i = 0; i < num; i++) {
		char word[128];
		int tmp=0;
		fscanf(file, "%d", &tmp);
		fscanf(file, "%s", word);
		hashset_add(hs, word);
	}
	fclose(file);
	return 1;
}
// Loads a hash set file created with hashset_save(). If the file
// cannot be opened, prints the message
// 
// ERROR: could not open file 'somefile.hs'
//
// and returns 0 without changing anything. Otherwise clears out the
// current hash set `hs`, initializes a new one based on the size
// present in the file, and adds all items from the file into the new
// hash set. Ignores the indices at the start of each line and uses
// hashset_add() to insert items in the order they appear in the
// file. Returns 0 on successful loading. This function does no error
// checking of the contents of the file so if they are corrupted, it
// may cause an application to crash or loop infinitely.

int is_prime(int num) { //helper function for next_prime(), determines if a number is prime or not
	for(int i = 2; i < num/2; i++) {
		if (num % i == 0) {
			return 0;
		}
	}
	return 1;
}

int next_prime(int num) {
	int prime = is_prime(num);
	int new = num;
	while(prime != 1) {
		if (new % 2 == 0) {
			new = new + 1;
			prime = is_prime(new);
		} else {
			new = new+2;
			prime = is_prime(new);
		}
	}
	return new;
}

// If 'num' is a prime number, returns 'num'. Otherwise, returns the
// first prime that is larger than 'num'. Uses a simple algorithm to
// calculate primeness: check if any number between 2 and (num/2)
// divide num. If none do, it is prime. If not, tries next odd number
// above num. Loops this approach until a prime number is located and
// returns this. Used to ensure that hash table_size stays prime which
// theoretically distributes elements better among the array indices
// of the table.

void hashset_expand(hashset_t *hs) {
	int size = next_prime(2*(hs->table_size)+1);
	hashnode_t **temp = malloc(sizeof(hashnode_t)*size);
	for(int i = 0; i < size; i++) {
		temp[i] = NULL;
	}
	free(hs->table);
	hs->table = temp;
	hs->table_size = size;
	hs->item_count = 0;
	hashnode_t *ptr = hs->order_first;
	while(ptr != NULL) {
		hashset_add(hs, ptr->item);
		hashnode_t *temp = ptr;
		ptr = ptr->order_next;
		free(temp);
	}
	
}
// Allocates a new, larger area of memory for the `table` field and
// re-adds all current items to it. The size of the new table is
// next_prime(2*table_size+1) which keeps the size prime.  After
// allocating the new table, all table entries are initialized to NULL
// then the old table is iterated through and all items are added to
// the new table according to their hash code. The memory for the old
// table is de-allocated and the new table assigned to the hash set
// fields "table" and "table_size".  This function increases
// "table_size" while keeping "item_count" the same thereby reducing
// the load of the hash table. Ensures that the memory associated with
// the old table is free()'d. Makes NO special effort to preserve old
// nodes: re-adds everything into the new table and then frees the old
// one along with its nodes. Uses functions such as hashset_init(),
// hashset_add(), hashset_free_fields() to accomplish the transfer.
