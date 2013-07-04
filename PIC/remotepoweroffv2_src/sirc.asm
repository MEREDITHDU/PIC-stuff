

; Sony SIRC (Serial Infra Red Control)
; freq			:	[40khz]
; header		:	[2]			-> Ent�te � l'�tat haut
;					[2,4ms]
; data timing	:	[0]			-> Dur�es identiques pour 0 et 1
;					[600us]
; Le 1 �tant repr�sent� par des pulsations pendant 1,2ms suivi de rien pendant 600us
; Le 0 �tant r�pr�sent� par des pulsations pendant 600us suivi de rien pendant 600us
; data			:	[28]		-> Nombre de bits � envoyer
;					[0110 1011 0101 1010 1011 0101 0101]
send_sirc

	F_40KHZ

	; Envoie de l'ent�te
	movlw	.90
	movwf	time_1

	call	send_1

	; Pr�paration des timing
	movlw	.24
	movwf	time_0

	movlw	.24
	movwf	time_1

	; Envoie des bits
	call	send_0
	call	send_2_1
	call	send_0

	call	send_1
	call	send_0
	call	send_2_1

	call	send_0
	call	send_1
	call	send_0
	call	send_1

	call	send_1
	call	send_0
	call	send_1
	call	send_0

	call	send_1
	call	send_0
	call	send_2_1

	call	send_0
	call	send_1
	call	send_0
	call	send_1

	call	send_0
	call	send_1
	call	send_0
	call	send_1

	return
