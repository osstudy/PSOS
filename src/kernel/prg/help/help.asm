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

HELP:

	push VersionString
	call PrintString
	add sp, 0x2

	push HelpMsg
	call PrintString
	add sp, 0x2

ret

CS_HELP: db "HELP", 0x0
HelpMsg: db 0xA, 0xA, "Enter a command or press escape to prepare for shutdown.", 0xA, 0xA, "Commands: ", 0xA, "CIRCLE: A circle drawing example.", 0xA, "CLEAR: Clear the console.", 0xA, "HELP: Display this help message.", 0xA, "VGATEST: Test VGA graphics mode.", 0xA, 0x0
