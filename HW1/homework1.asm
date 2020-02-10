.text
.globl Main	
Main:
	
	#READING
	#OPEN A FILE	
	li $v0,13           	# open_file syscall code = 13
    	la $a0,fileName     	# get the file name
    	li $a1,0           	# file flag = read (0)
    	syscall
    	move $s0,$v0        	# save the file descriptor. $s0 = file
	
	#READ THE FILE
	li $v0, 14		# read_file syscall code = 14
	move $a0,$s0		# file descriptor
	la $a1,fileWords  	# The buffer that holds the string of the WHOLE file
	la $a2,1024		# hardcoded buffer length
	syscall
	
	#CLOSE THE FILE
    	li $v0, 16         	# close_file syscall code
    	move $a0,$s0      	# file descriptor to close
    	syscall
    	
    	la $s0, fileWords	# load address
    	add $t0, $s0, $zero	# address of byte to be examine next
	la $s2, set1
	add $t2, $s2, $zero
 	#t0 = filewords
 	#t2= set1[0]
 	addi $t4, $zero, 250
	
 	
Loop:
	subi $t4, $t4, 1
	lb $t1, 0($t0)	# load that byte to get *(s + ct)
	beq $t4, $zero, endLoop
	beq $t1,'\n', arrayIncr	 # branch if *(s + ct) == ’\0’
	sb $t1, 0($t2)
	addi $t0, $t0, 1
	addi $t2, $t2,1
	j Loop

arrayIncr: #jump the other array 
	addi $s2, $s2, 20 
	add $t2, $s2, $zero
	addi $t0, $t0, 1
	j Loop

endLoop:   #prints the sets
	li $v0, 4	# read_string syscall code = 4
	la $a0, str1
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, set1
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, str2
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, set2
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, str3
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, set3
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, str4
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, set4
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, str5
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, set5
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, str6
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, set6
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, str7
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, set7
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, str8
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, set8
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, str9
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, set9
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, str10
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, set10
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, str11
	syscall
	li $v0, 4	# read_string syscall code = 4
	la $a0, superSet
	syscall
	li $t5, 0 # initialize loop-counter
        la $t7, set1 #load the address of the 1st byte
        li $v0, 4 
        la $a0, output
        syscall
	j lengthSet1
	
lengthSet1:
        lb $t6, 0($t7) # load the content of the address stored in $t7
        beq $t6, $zero, Set2    # branch if equal
                    # exit the program if $t6== null 
        addi $t5, $t5, 1 # increment the loop counter
        addi $t7, $t7, 1 # go to next byte      
        j lengthSet1 

Set2:
 	li $v0, 4 
        la $a0, newline
        syscall
        li $t8, 0 # initialize loop-counter
        la $t7, set2 #load the address of the 1st byte
        j lengthSet2
        
lengthSet2:
        lb $t6, 0($t7) # load the content of the address stored in $t7
        beq $t6, $zero, Set3   # branch if equal
                    # exit the program if $t6== null 
        addi $t8, $t8, 1 # increment the loop counter
        addi $t7, $t7, 1 # go to next byte      
        j lengthSet2        
 
Set3:

        j comparision12
        
comparision12: 	
	slt $t1,$t5,$t8    # checks if $s0 > $s1
	beq $t1,1,union1
	li $v0, 4 
        la $a0, set1
         syscall
        li $t5, 0 # initialize loop-counter
        la $t7, set3 #load the address of the 1st byte
        j lengthSet3
         
union1: 
	li $v0, 4 
        la $a0, set2
           syscall
        li $t5, 0 # initialize loop-counter
        la $t7, set3 #load the address of the 1st byte
        j lengthSet3
        
 lengthSet3:
        lb $t6, 0($t7) # load the content of the address stored in $t7
        beq $t6, $zero, Set4    # branch if equal
                    # exit the program if $t6== null 
        addi $t5, $t5, 1 # increment the loop counter
        addi $t7, $t7, 1 # go to next byte      
        j  lengthSet3
          
Set4:

        li $t8, 0 # initialize loop-counter
        la $t7, set4 #load the address of the 1st byte
        j lengthSet4
        
 lengthSet4:
        lb $t6, 0($t7) # load the content of the address stored in $t7
        beq $t6, $zero, Set5   # branch if equal
                    # exit the program if $t6== null 
        addi $t8, $t8, 1 # increment the loop counter
        addi $t7, $t7, 1 # go to next byte      
        j lengthSet4        
 	
Set5:
	li $v0, 4 
        la $a0, newline
        syscall
        j comparision34
     
 comparision34: 	
	slt $t1,$t5,$t8    # checks if $s0 > $s1
	beq $t1,1,union2
	li $v0, 4 
        la $a0, set3
         syscall
        li $t5, 0 # initialize loop-counter
        la $t7, set5 #load the address of the 1st byte
        j lengthSet5
         
union2: 
	li $v0, 4 
        la $a0, set4
        syscall
        li $t5, 0 # initialize loop-counter
        la $t7, set5 #load the address of the 1st byte
        j lengthSet5
 
 lengthSet5:
        lb $t6, 0($t7) # load the content of the address stored in $t7
        beq $t6, $zero, Set6    # branch if equal
                    # exit the program if $t6== null 
        addi $t5, $t5, 1 # increment the loop counter
        addi $t7, $t7, 1 # go to next byte      
        j lengthSet5 

Set6:

        li $t8, 0 # initialize loop-counter
        la $t7, set6 #load the address of the 1st byte
        j lengthSet6
 
 lengthSet6:
        lb $t6, 0($t7) # load the content of the address stored in $t7
        beq $t6, $zero, Set7   # branch if equal
                    # exit the program if $t6== null 
        addi $t8, $t8, 1 # increment the loop counter
        addi $t7, $t7, 1 # go to next byte      
        j lengthSet6 

Set7:
	li $v0, 4 
        la $a0, newline
        syscall
        j comparision56
        
  comparision56: 	
	slt $t1,$t5,$t8    # checks if $s0 > $s1
	beq $t1,1,union3
	li $v0, 4 
        la $a0, set5
         syscall
        li $t5, 0 # initialize loop-counter
        la $t7, set7 #load the address of the 1st byte
        j lengthSet7
         
union3: 
	li $v0, 4 
        la $a0, set6
        syscall
        li $t5, 0 # initialize loop-counter
        la $t7, set7 #load the address of the 1st byte
        j lengthSet7
        
lengthSet7:
        lb $t6, 0($t7) # load the content of the address stored in $t7
        beq $t6, $zero, Set8    # branch if equal
                    # exit the program if $t6== null 
        addi $t5, $t5, 1 # increment the loop counter
        addi $t7, $t7, 1 # go to next byte      
        j lengthSet7
   
 Set8:

        li $t8, 0 # initialize loop-counter
        la $t7, set8 #load the address of the 1st byte
        j lengthSet8
        
 lengthSet8:
        lb $t6, 0($t7) # load the content of the address stored in $t7
        beq $t6, $zero, Set9   # branch if equal
                    # exit the program if $t6== null 
        addi $t8, $t8, 1 # increment the loop counter
        addi $t7, $t7, 1 # go to next byte      
        j lengthSet8
        
Set9:
	li $v0, 4 
        la $a0, newline
        syscall
        j comparision78
        
comparision78: 	
	slt $t1,$t5,$t8    # checks if $s0 > $s1
	beq $t1,1,union4
	li $v0, 4 
        la $a0, set7
         syscall
        li $t5, 0 # initialize loop-counter
        la $t7, set9 #load the address of the 1st byte
        j lengthSet9
         
union4: 
	li $v0, 4 
        la $a0, set8
           syscall
        li $t5, 0 # initialize loop-counter
        la $t7, set9 #load the address of the 1st byte
        j lengthSet9

 lengthSet9:
        lb $t6, 0($t7) # load the content of the address stored in $t7
        beq $t6, $zero, Set10    # branch if equal
                    # exit the program if $t6== null 
        addi $t5, $t5, 1 # increment the loop counter
        addi $t7, $t7, 1 # go to next byte      
        j lengthSet9
        
 Set10:
 	li $v0, 4 
        la $a0, newline
        syscall
        li $t8, 0 # initialize loop-counter
        la $t7, set10 #load the address of the 1st byte
        j lengthSet10         

 lengthSet10:
        lb $t6, 0($t7) # load the content of the address stored in $t7
        beq $t6, $zero, lastSet   # branch if equal
                    # exit the program if $t6== null 
        addi $t8, $t8, 1 # increment the loop counter
        addi $t7, $t7, 1 # go to next byte      
        j lengthSet10
lastSet:

        j comparision910
                    
 comparision910: 	
	slt $t1,$t5,$t8    # checks if $s0 > $s1
	beq $t1,1,union5
	li $v0, 4 
        la $a0, set9
         syscall
        li $t5, 0 # initialize loop-counter
        la $t7, set3 #load the address of the 1st byte
        j Exit
         
union5: 
	li $v0, 4 
        la $a0, set10
        syscall
        li $t5, 0 # initialize loop-counter
        la $t7, set3 #load the address of the 1st byte
        j Exit     
 	
Exit:
	# EXIT (terminate program)
	li $v0, 10
	syscall	
    	
  #STRINGS
.data
fileName: .asciiz "input.txt"
fileWords: .space 250	
str1: .asciiz "\nSet 1\n"
str2: .asciiz "\nSet 2\n"
str3: .asciiz "\nSet 3\n"
str4: .asciiz "\nSet 4\n"
str5: .asciiz "\nSet 5\n"
str6: .asciiz "\nSet 6\n"
str7: .asciiz "\nSet 7\n"
str8: .asciiz "\nSet 8\n"
str9: .asciiz "\nSet 9\n"
str10: .asciiz "\nSet 10\n"
str11: .asciiz "\nThe Union Set\n"
output:.asciiz "\nSets for minimum set cover (these sets covers the union set)"
newline: .asciiz "\n"
set1: .space 20
set2: .space 20
set3: .space 20
set4: .space 20
set5: .space 20
set6: .space 20
set7: .space 20
set8: .space 20
set9: .space 20
set10: .space 20
superSet:.space 200
