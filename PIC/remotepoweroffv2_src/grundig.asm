
; Grundig
; freq			:	[32khz]		-> 32 khz
; header		:	[1]			-> Ent�te pr�sent
; 					[2,480ms]	-> Dur�e du 0
; 					[740us]		-> Dur�e du 1
; data timing	:	[1]			-> Dur�e diff�rente pour 1 et 0
;					[580]		-> Dur�e du 0
;					[450]		-> Dur�e du 1
; data			:	[20]		-> Nombre de bits � envoyer
;					[1001 1001 0101 0101 0101]






; Grundig
; 32khz, espac� de l'ent�te de 20ms
; header : 740us � 1, 2,480ms � 0
; 1 bit 0 : 580us
; 1 bit 1 : 450us
; 1001 1001 0101 0101 0101
send_grundig

	F_30KHZ

	; Header
	movlw	.77
	movwf	time_0

	movlw	.18
	movwf	time_1

	call	send_1
	call	send_0

	movlw	.2
	movwf	time_1

	call	send_1

	; Data
	movlw	.17
	movwf	time_0

	movlw	.11
	movwf	time_1

	call	send_1

	movlw	.33
	movwf	time_0
	call	send_0

	movlw	.20
	movwf	time_0

	call	send_2_1

	call	send_0
	call	send_0
	call	send_1

	call	send_0
	call	send_1
	call	send_0
	call	send_1

	call	send_0
	call	send_1
	call	send_0
	call	send_1

	call	send_0
	call	send_1
	call	send_0
	call	send_1

	return


send_grundig_h

	F_30KHZ

	; Header
	movlw	.77
	movwf	time_0

	movlw	.18
	movwf	time_1

	call	send_1
	call	send_0

	; Data
	movlw	.17
	movwf	time_0

	movlw	.11
	movwf	time_1

	call	send_1
	call	send_0
	call	send_1
	call	send_0

	call	send_1
	call	send_0
	call	send_1
	call	send_0

	call	send_1
	call	send_0
	call	send_1
	call	send_0

	call	send_1
	call	send_0
	call	send_1
	call	send_0

	call	send_1
	call	send_0
	call	send_1
	call	send_0

	return
