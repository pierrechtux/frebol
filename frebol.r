#!/usr/bin/rebol -qs
rebol [
"L'idée fondatrice est de permettre à des non-anglophones, par exemple des enfants de pays non anglophones, d'avoir accès à un langage de programmation et de se forger la logique de développement. Une fois initiés aux joies de la programmation, ces gens devront plutôt continuer à coder dans un langage conforme aux us et coutumes de notre époque, c'est-à-dire un langage dont les mot-clés sont en anglais."
"Rebol et Red sont des langages de programmation idéaux pour ce type d'exercice, de par l'absence de mot-clés et l'utilisation de mots simples, qui peuvent aisément être définis ou redéfinis."
"Ce programme est de ce fait simplissime: il s'agit simplement de définir des mots français de manière à ce que leur interprétation par Rebol (ou Red) amène à l'interprétation du mot équivalent en Rebol (ou Red)."
"The initial idea is to allow people who are not English-speakers, i.e. children in non English-speaking countries, to develop using a programming language in their own native language, so that they can build themselves the logic of development.  Once initiated to the joys of programming, these people should rather continue to code using a programming language more standard, that is with English keywords."
"Rebol and Red are ideal language for these kind of mappings, since there are no keywords, but simple words, which can very simply be remapped."
"Hence, this program is simplistic: it simply defines some French words so that when they are used by Rebol, their Rebol equivalent is used."
]
; definition of words:
; définition des mots:

; french word   ;Rebol word
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
longueur?:      :length?
renverse:       :reverse
trie:           :sort
;trie/envers:   :sort/reverse   ; ne fonctionne pas avec les raffinements TODO il faut faire une fonction enveloppe "trie", qui reprenne les raffinements et options de sort<
copie:          :copy
picore:         :pick			; discutable... ramasse? choisis? va-chercher? pique? hmm. TODO choisir un mot adéquat
trouve:         :find
selectionne:    :select
a:              :at             ; curieux: do [ é: :at ] fonctionne, mais pas do [ à: :at ] => donc 'a au lieu de 'à TODO les soucis de non-ascii devraient se résoudre d'eux-mêmes dans Red; voir dans Rebol3
saute:          :skip
extrait:        :extract

voir:           :view
page:           :layout			; discutable: arrangement? mise-en-page? écran?

;bouton:         :button		; mince, ça ne marche pas: le dialecte VID devrait se traduire d'une autre manière
;btn:            :btn

envoyer:        :send
lire:           :read

pourchaque:     :foreach

vers-argent:    :to-money
sépare:         :parse			; discutable
alerter:        :alert


; quelques tests          some testing:
print "Les mots équivalents Frebol chargés: essais:"
print "Frebol equivalent words loaded; tests:"
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

