.string	"hello, world\n"
main:
	sub	rsp, 8
	mov	edi, OFFSET FLAT:.LC0 ; "hello, world\textbackslash{}n"
	xor	eax, eax  ; ilość przekazanych rejestrów wektorowych
	call	printf
	xor	eax, eax
	add	rsp, 8
	ret
