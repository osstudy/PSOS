;PSOS Version 1.0
;https://github.com/TheBenPerson/PSOS

;Copyright (C) 2016 Ben Stockett <thebenstockett@gmail.com>

;Permission is hereby granted, free of charge, to any person obtaining a copy
;of this software and associated documentation files (the "Software"), to deal
;in the Software without restriction, including without limitation the rights
;to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;copies of the Software, and to permit persons to whom the Software is
;furnished to do so, subject to the following conditions:

;The above copyright notice and this permission notice shall be included in all
;copies or substantial portions of the Software.

;THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;SOFTWARE.

VGATEST:

	push es
	push bx

	push word [KeyCallback]
	mov word [KeyCallback], 0x0

	push 0x13
	call SetVideoMode
	add sp, 0x2

	mov bx, 0xA000
	mov es, bx

	xor bx, bx

	.Loop:

		cmp bx, 0xFA00
		je .Return

		mov [es:bx], bh

		inc bx

	jmp .Loop

	.Return:

	push 5000
	call Sleep
	add sp, 0x2

	push 0x3
	call SetVideoMode
	add sp, 0x2

	call CLEAR

	pop word [KeyCallback]

	pop bx
	pop es

ret

CS_VGATEST: db "VGATEST", 0x0