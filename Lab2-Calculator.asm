	.data
space:  .asciiz "\n"
header1:.asciiz "=============================================================================\n"
header2:.asciiz "Program Description: This program is written to mimic a very basic calculator\n"
header3:.asciiz "Author:              Henry Brooks\n"
header4:.asciiz "Creation Date:       02/01/2017\n"

nl:	.asciiz "\n"

query:	.asciiz "Please input two numbers?\n"
sum:	.asciiz "Sum is:"
dif:	.asciiz "Difference is:"
prod:	.asciiz "Product is:" 
quot:	.asciiz "Quotient is:"
rem:	.asciiz "Remainder is:"

	.text
main:	li $v0, 4		#print header information
	la $a0, header1
	syscall
	la $a0, header2
	syscall
	la $a0, header3
	syscall
	la $a0, header4
	syscall
	la $a0, header1
	syscall
	
	la $a0, query		#print "Please input two numbers?"
	syscall

	li $v0, 5		#take first input
	syscall
	
	add $t0, $v0, $0	#store $v0 to $t0
	
	li $v0, 5		#take second input
	syscall
	
	add $t1, $v0, $0	#store $v0 to $t0
	
	
	
	li $v0, 1		#load print int program
	add $a0, $t0, $0	#load temp into arg
	syscall
	
	li $v0, 4		#print newline
	la $a0, nl
	syscall
	
	li $v0, 1
	add $a0, $t1, $0
	syscall