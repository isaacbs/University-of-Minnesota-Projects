.text
.global  set_batt_from_ports
        
## ENTRY POINT FOR REQUIRED FUNCTION
set_batt_from_ports:
        #args are 
        # %rdi = batt_t *batt
        ## assembly instructions here
        movw  BATT_VOLTAGE_PORT(%rip), %dx   # copy global var to reg dx  (16-bit word)
        movb  BATT_STATUS_PORT(%rip), %cl    # copy global var to reg cl  (8-bit byte)
        #movl  %r8d, BATT_DISPLAY_PORT(%rip)  # copy reg r8d to global var (32-bit long-word)
        
        cmpw    $0,%dx
        jl      .ERROR          #if BATT_VOLTAGE_PORT < 0, jump.
        cmpw    $7600,%dx
        jge     .LARGE          #if BATT_VOLTAGE_PORT >= 7600, jump.
        cmpw    $6000,%dx
        jle     .SMALL          #if BATT_VOLTAGE_PORT <= 6000, jump.

.MID: 
        movw    %dx,%r10w        #executes if BATT_VOLTAGE_PORT is between the two extrema
        sarw    $1,%r10w         
        movw    %r10w,0(%rdi)    
        subw    $3000,%r10w
        sarw    $3,%r10w
        movw    %r10w,2(%rdi)

.CONT:
        movb    %cl,%r9b
        sarw    $2,%r9w
        andw    $0b1,%r9w
        cmpw    $1,%r9w
        je      .END1
        jmp     .END2

.LARGE:
        movw    %dx,%r10w        #lines executed if BVP >= 7600
        sarw    $1,%r10w         
        movw    %r10w,0(%rdi)
        movb    $100,2(%rdi)
        jmp     .CONT
.SMALL:                         #lines executed if BVP <= 6000
        movw    %dx,%r10w
        sarw    $1,%r10w
        movw    %r10w,0(%rdi)
        movb    $0,2(%rdi)
        jmp     .CONT

.END1:
        movb    $2,3(%rdi)
        movl    $0,%eax
        ret

.END2:
        movb    $1,3(%rdi)
        movl    $0,%eax
        ret

.ERROR:
        movl    $1,%eax
        ret


### Change to definint semi-global variables used with the next function 
### via the '.data' directive
.data
	
bit_patterns:                   
        .int 0b0111111          ##0
        .int 0b0000110          ##1
        .int 0b1011011          ##2
        .int 0b1001111          ##3
        .int 0b1100110          ##4
        .int 0b1101101          ##5
        .int 0b1111101          ##6
        .int 0b0000111          ##7
        .int 0b1111111          ##8
        .int 0b1101111          ##9
template:
        .int 0b000000000000000000000000 ##blank template for display port
# declare multiple ints sequentially starting at location
# 'my_array' for an array. Each are spaced 4 bytes from the
# next and can be given values using the same prefixes as 
# are understood by gcc.
## WARNING: Don't forget to switch back to .text as below
## Otherwise you may get weird permission errors when executing 
.text
.global  set_display_from_batt

## ENTRY POINT FOR REQUIRED FUNCTION
set_display_from_batt:  
        ##args: batt_t in rdi
        ##      *int in r14
        pushq	%rbx
        pushq   %r12                    #additional registers pushed in order to have access in function
        pushq   %r13
        pushq   %r14

        movl    template(%rip),%r14d      #load template into r14d
        movq    %rdi, %r8                #batt_t moved into r8             
        shrq    $24, %r8                 #shift and mask to get batt.mode in r8
        cmpl    $2, %r8d                #compare 2 to batt.mode, if equal, jump to MODE2
        je      .MODE2
        cmpl    $1, %r8d                #compare 1 to batt.mode, if equal, jump to MODE1
        je      .MODE1
        jmp     .ERROR2

.MODE2:
        movq    %rdi, %r8
        movq    $0, %rax
        movq    $0, %rdx
        shrq    $16, %r8                #shift and mask to get batt.percent in r8
        andq    $0xFF, %r8
        movw    %r8w, %ax              #move batt.percent into ax (prep for division)
        cwtl
        cltq
        cqto
        movq    $10, %rcx              #move divisor into rcx
        idivq   %rcx                   #divide combined register by 10
        movq    %rdx, %r9              #move remainder of division into r9 (rDigit)

        cqto
        idivq   %rcx
        movq    %rdx, %r10             #move remainder of division into r10 (mDigit)
        cqto
        idivq   %rcx
        movq    %rdx, %r11             #move remainder of division into r11 (lDigit)
        jmp     .BATT_DISP

.MODE1:
        movq    %rdi, %r8
        movw    %r8w, %ax              #move batt.mlvolts into ax (prep for division)
        cwtl                           #prep for division	
        cltq
        cqto
        movq    $10, %rcx              #move divisor into rcx
        idivq   %rcx                   #divide combined register by 10
        movq    %rdx, %r12             #move remainder of division into r12 (rounding)
        cqto
        idivq   %rcx
        movq    %rdx, %r9              #move remainder of division into r9 (rDigit)
        cqto
        idivq   %rcx
        movq    %rdx, %r10             #move remainder of division into r10 (mDigit)
        cqto
        idivq   %rcx
        movq    %rdx, %r11             #move remainder of division into r11 (lDigit)
        cmpq    $4, %r12
        jg      .ROUND
        jmp     .BATT_DISP

.ROUND:
        incq    %r9
        jmp     .BATT_DISP

.BATT_DISP:
        movq    %rdi, %r8
        shrq    $16, %r8                #shift and mask to get batt.percent in r8
        cmpb    $89, %r8b
        jg      .PERCENT89              #each of the below tests, checks to see if the percent is above a certain threshold.
        cmpb    $69, %r8b               #then jumps to the correct area for the battery percentage.
        jg      .PERCENT69
        cmpb    $49, %r8b
        jg      .PERCENT49
        cmpb    $29, %r8b
        jg      .PERCENT29
        cmpb    $5, %r8b
        jg      .PERCENT5
        jmp     .MASKING

.PERCENT89:
        movl	$0b11111, %ebx 			#move bitpattern into %ebx
        shlq    $24, %rbx                       #temp(rbx) << 24
        orq	%rbx, %r14 			#temp(r14) |= rbx
        jmp 	.MASKING

.PERCENT69:
	movl	$0b01111, %ebx 			#move bitpattern into %ebx
        shlq    $24, %rbx                       #temp(rbx) << 24
        orq     %rbx, %r14                      #temp(r14) |= rbx
        jmp     .MASKING

.PERCENT49:
	movl	$0b00111, %ebx 			#move bitpattern into %ebx
        shlq    $24, %rbx                       #temp(rbx) << 24
        orq     %rbx, %r14                      #temp(r14) |= rbx
        jmp     .MASKING

.PERCENT29:
	movl	$0b00011, %ebx 			#move bitpattern into %ebx
        shlq    $24, %rbx                       #temp(rbx) << 24
        orq     %rbx, %r14                      #temp(r14) |= rbx
        jmp     .MASKING

.PERCENT5:
	movl	$0b00001, %ebx 			#move bitpattern into %ebx
        shlq    $24, %rbx                       #temp(rbx) << 24
        orq     %rbx, %r14                      #temp(r14) |= rbx
        jmp     .MASKING

.MASKING:
	movq    %rdi, %r8                #batt_t moved into r8             
        sarq    $24, %r8                 #shift and mask to get batt.mode in r8
        leaq    bit_patterns(%rip), %r13
        cmpb    $2, %r8b                #compare 2 to batt.mode, if equal, jump to .MASK2
        je 	.MASK2
        jmp 	.MASK1			#else jump to .MASK1

.MASK2:	
	movl	$0b001, %ebx 		#move bitpattern into %rdx
        shlq    $21, %rbx               #temp(rbx) << 21
        orq	%rbx, %r14 		#temp(r14) |= rbx
        
        movq    %rdi, %r8               #batt_t moved into r8
        sarq    $16, %r8                #shift and mask to get batt.percent in r8             

        cmpb    $100, %r8b               #compare 100 to %r8, if less than, jump to .MASKLESS
        jl 	.MASKLESS
        jmp 	.MASKMORE 		#if not, jump to .MASKMORE

.MASKLESS:
	cmpb	$10, %r8b 		#compare 10 to %r8, if less than, jump to .MASKLESSLESS
	jl 	.MASKLESSLESS
	movq	$0b0000000, %rbx	#place bitpattern 0b0000000 into rbx
        shlq    $14, %rbx
	orq 	%rbx, %r14

        movl    (%r13,%r10,4), %ebx
        shlq    $7, %rbx                #temp(rbx) << 7
	orq	%rbx, %r14 	        #temp(rbx) |= bit_patterns[mDigit] (%r13[r10])
        
        movl	(%r13,%r9,4), %ebx 	#temp(rbx) |= bit_patterns[rDigit] (%r13[r9])
        orq     %rbx, %r14
        jmp 	.END

.MASKLESSLESS:
	movl	$0b0000000, %ebx	#place bitpattern 0b0000000 into rbx
        shlq    $14, %rbx
	orq 	%rbx, %r14

	movl    $0b0000000, %ebx        #place bitpattern 0b0000000 into rbx
        shlq    $7, %rbx
        orq     %rbx, %r14

	movl   (%r13,%r9,4), %ebx      #temp(rbx) |= bit_patterns[rDigit] (%r13[r9])
        orq     %rbx, %r14
        jmp     .END

.MASKMORE:
	movl	(%r13,%r11,4), %ebx 	#temp(rbx) |= bit_patterns[lDigit] (%r13[r11])
        shlq	$14, %rbx		#temp(rbx) << 14
        orq     %rbx, %r14

        movl    (%r13,%r10,4), %ebx
        shlq    $7, %rbx                #temp(rbx) << 7
        orq     %rbx, %r14              #temp(rbx) |= bit_patterns[mDigit] (%r13[r10])
        
        movl    (%r13,%r9,4), %ebx      #temp(rbx) |= bit_patterns[rDigit] (%r13[r9])
        orq     %rbx, %r14
        jmp     .END

.MASK1:
	movl	$0b110, %ebx 		#move bitpattern into %rbx
        shlq    $21, %rbx               #temp(rbx) << 21
        orq	%rbx, %r14 		#temp(rbx) |= rdx

        movl    (%r13,%r11,4), %ebx     #temp(rbx) |= bit_patterns[lDigit] (%r13[r11])
        shlq    $14, %rbx               #temp(rbx) << 14
        orq     %rbx, %r14

        movl    (%r13,%r10,4), %ebx
        shlq    $7, %rbx                #temp(rbx) << 7
        orq     %rbx, %r14              #temp(rbx) |= bit_patterns[mDigit] (%r13[r10])
        
        movl    (%r13,%r9,4), %ebx      #temp(rbx) |= bit_patterns[rDigit] (%r13[r9])
        orq     %rbx, %r14
        jmp     .END

.ERROR2:
	popq	%rbx
        popq	%r12                    #additional registers popped in order to have access in function
        popq	%r13
        popq    %r14
	movl	$1,%eax
	ret

.END:
	movl	%r14d, (%rsi)		#move temp(rbx) into *display(rdi) 
	popq	%rbx
        popq	%r12                    #additional registers popped in order to have access in function
        popq	%r13
        popq    %r14
        movl	$0,%eax
        ret

.text
.global batt_update
        
## ENTRY POINT FOR REQUIRED FUNCTION
batt_update:
        subq    $8, %rsp                #extend the stack by subtraction
        movq    %rsp, %rdi              #move zero into the first argument (&otherTemp)
        call    set_batt_from_ports     #call the function with otherTemp
        cmpl    $1, %eax                #check if return value is a 1
        je      .ERROR3

        movl    (%rsp), %edi            #move otherTemp into rcx
        leal    BATT_DISPLAY_PORT(%rip), %esi 

        call    set_display_from_batt
        cmpl    $1, %eax
        je      .ERROR3

        addq    $8,%rsp
        movl    $0, %eax
        ret

.ERROR3:
        movl    $1, %eax
        addq    $8, %rsp
        ret
