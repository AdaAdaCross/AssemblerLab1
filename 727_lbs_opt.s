.data
array:
	.byte 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

.text
.global _start
_start:
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
	movl $1, %eax
	movl %ecx, %ebx
	int $0x80
