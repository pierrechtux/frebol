#!/usr/bin/rebol -qs
rebol []
; definition of words:
; définition des mots:

; french word	;Rebol word
; mot français	;mot Rebol
ecrit:		:print
boucle:		:loop
pour:		:for                                         
raboute:	:rejoin


; some testing:
pour i 1 5 1 [ecrit raboute ["Voilà la boucle numro: " i]]

