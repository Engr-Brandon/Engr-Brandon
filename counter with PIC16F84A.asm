    list p=16f84, f=inhx8m, r=dec
    #include "p16f84.inc"
    __config _CP_OFF &_WDT_OFF &_XT_OSC &_PWRTE_OFF
;----------------------------------------	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
CONST1  equ 08h
CONST2  equ 09h
;=========================================
;-----------------------------------------
      org	0x0000
      goto 	start 	; go to beginning of program

start     bsf    STATUS,RP0      ;Bank 1
      movlw  b'00000000'     ;set all portB as output
      movwf    TRISB         
      bcf    STATUS,RP0      ;Bank 0     
      goto      MAIN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
delay   
loop1   decfsz  CONST1,1
    goto    loop1
    decfsz  CONST2,1
    goto    loop1
    return
;--------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;--------------------------------------------
MAIN      movlw   b'00000000'     ;decimal 0
      movwf   PORTB
      call delay         ;set my delay loop
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      movlw   b'00000001'     ;decimal 1
      movwf   PORTB
      call delay     ;set my delay loop
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      movlw   b'00000010'     ;decimal 2
      movwf   PORTB
      call delay          ;set my delay loop
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      movlw   b'00000011'     ;decimal 3
      movwf   PORTB
      call delay         ;set my delay loop
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      movlw   b'00000100'     ;decimal 4
      movwf   PORTB
      call delay        ;set my delay loop
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      movlw   b'00000101'     ;decimal 5
      movwf   PORTB
      call delay          ;set my delay loop
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      movlw   b'00000110'     ;decimal 6
      movwf   PORTB
      call delay        ;set my delay loop
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      movlw   b'00000111'     ;decimal 7
      movwf   PORTB
      call delay         ;set my delay loop
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      movlw   b'00001000'     ;decimal 8
      movwf   PORTB
      call delay         ;set my delay loop
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      movlw   b'00001001'     ;decimal 9
      movwf   PORTB
      call delay         ;set my delay loop
;;;;;;;
      goto    MAIN
      END
