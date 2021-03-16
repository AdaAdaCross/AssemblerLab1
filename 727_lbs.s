.data
print_format:
	.string "%d\n"
array:
	.byte 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
array_end:

tmp: .byte 0

.text
.global main
.type main, @function
main:
	movl $0, %ecx
	movl $array, %ebx
	movl $0, %eax

main_loop:
	movl %eax, %edx
	add %ebx, %edx

	movl (%edx), %edx
	and $255, %edx
        or $8, %edx
	add %edx, %ecx

	addl $1, %eax
	cmpl $10, %eax
	jne main_loop
end:

        pushl %ecx
        pushl $print_format
        call printf
        addl $8, %esp

	movl $0, %edx
	movl $0, %ecx
	movl $0, %ebx
	movl $0, %eax
	ret
