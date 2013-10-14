#!/usr/bin/rebol -qs
rebol []
; definition of words:
; définition des mots:

; french wor    ;Rebol word
; mot français  ;mot Rebol      ;testé
écrit:          :print          ;oc
écri:           :prin           ;oc
boucle:         :loop           ;oc
pour:           :for            ;oc
raboute:        :join           ;oc
reduit_raboute: :rejoin         ;oc
moule:          :mold           ;oc
sonde:          :probe          ;oc
reduit:         :reduce         ;oc
formate:        :form           ;oc
début:          :head
suivant:        :next
premier:        :first
longueur?:      :length?
début?:         :head?
fin?:           :tail?
ajoute:         :append         ;oc
longueur?:       :length?
renverse:       :reverse
trie:           :sort
;trie/envers:   :sort/reverse   ; ne fonctionne pas avec les raffinements
copie:          :copy
picore:         : pick			; discutable... ramasse? choisis? va-chercher? hmm.

; quelques tests          some testing:
pour i 1 5 1 [écrit reduit_raboute ["Voilà la boucle numéro: " i]]
écri "Et maintenant..."
pour i 1 5 1 [écri  reduit_raboute [" et voilà la boucle sur une seule ligne: " i]]
écrit ""
boucle 4 [écrit "Boucle"]
nom: "Personne"
prénom: "Paul"
écrit raboute prénom nom
noms: ["Gérard Lambin" "Henry IV" "LaBielle de Cadix"]
écrit moule noms
écrit noms
ajoute noms raboute prénom nom
ajoute noms 'nom
écrit reduit noms
écrit noms
écrit formate noms
écrit sonde noms
noms: suivant noms
écrit premier noms

