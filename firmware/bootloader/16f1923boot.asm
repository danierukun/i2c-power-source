;; This file is part of 16f1923bootloader.

;; 16f1923bootloader is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; 16f1923bootloader is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY ; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.


;; You should have received a copy of the GNU General Public License
;; along with 16f1923bootloader.  If not, see <http://www.gnu.org/licenses/>.


	include p16f1823.inc

	;; Definition of variables
	
	CBLOCK 0x20
	i2cAddr
	gpCounter
	ENDC

	ORG 0x5
	
init:
	
	MOVLW	0b11101011	; Load TRISC config word
	TRIS	7		; Configure TRISC

	CLRF	i2cAddr 	; Clear since its going to be rotated through carry
	MOVLW	8
	MOVWF	gpCounter 	; Set general purpose counter to 8 for data read

	BSF	PORTC,RC2 	; 
	BCF	PORTC,RC2	; Latch address data
	BSF	PORTC,RC2	; Prepare register for shifting

addr_shift_start:
	BSF	PORTC,RC4
	BCF	PORTC,RC4 	; Single clock to read data

addr_shift_bit_test:
	BTFSS	PORTA,RA5 	; Test input
	GOTO	addr_shift_bit_clear

addr_shift_bit_set:
	BSF	STATUS,C 	; Set the carry bit
	GOTO	addr_shift_rotate

addr_shift_bit_clear:
	BCF	STATUS,C 	; Clear the carry bit

addr_shift_rotate:
	RLF	i2cAddr,F 	; Shift address data into register
	DECFSZ	gpCounter	; check if all data has been shifted in
	GOTO	addr_shift_start ; no

i2c_setup:
	MOVF	i2cAddr,W
	MOVLB	4 		; Change to bank 4
	MOVWF	SSP1ADD		; Set device i2c address
	MOVLB	0		; Return to bank 0
	
	MOVLW	0b00000110	; Load SSP1CON1 config word
	MOVWF	SSP1CON1	; Configure SSP1CON1

	
	
	
