#!/usr/bin/rebol -qs
rebol [
{L'idée fondatrice est de permettre à des non-anglophones, par exemple des enfants de pays non anglophones, d'avoir accès à un langage de programmation et de se forger la logique de développement. Une fois initiés aux joies de la programmation, ces gens devront plutôt continuer à coder dans un langage conforme aux us et coutumes de notre époque, c'est-à-dire un langage dont les mot-clés sont en anglais.
Rebol et Red sont des langages de programmation idéaux pour ce type d'exercice, de par l'absence de mot-clés et l'utilisation de mots simples, qui peuvent aisément être définis ou redéfinis.
Ce programme est de ce fait simplissime: il s'agit simplement de définir des mots français de manière à ce que leur interprétation par Rebol (ou Red) amène à l'interprétation du mot équivalent en Rebol (ou Red).

The initial idea is to allow people who are not English-speakers, i.e. children in non English-speaking countries, to develop using a programming language in their own native language, so that they can build themselves the logic of development.  Once initiated to the joys of programming, these people should rather continue to code using a programming language more standard, that is with English keywords.
Rebol and Red are ideal language for these kind of mappings, since there are no keywords, but simple words, which can very simply be remapped.
Hence, this program is simplistic: it just defines some French words, so that when they are evaluated used by Rebol, their Rebol equivalent is used.
}
]

; definition of words:
; définition des mots:

; french word   ;Rebol word
; mot français  ;mot Rebol      ;testé
                                ; (oc signifie oui en langue d'oc; et c'est proche de "au quai", mais pmlus court)

affiche:        :print          ;oc     => avant: écrit  => mis "affiche", plutôt, écrit viendra en traduction de write.
affich:         :prin           ;oc     => avant: écri
demande:        :input
boucle:         :loop           ;oc
pour:           :for            ;oc
joint:          :join           ;oc     => avant: raboute; mais joint sera probablement plus explicite; surtout pour le suivant, rejoint
rejoint:        :rejoin         ;oc     => avant: reduit_raboute; rejoint sera certainement plus explicite
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
picore:         :pick           ; discutable... ramasse? choisis? va-chercher? pique? hmm. TODO choisir un mot adéquat
trouve:         :find
selectionne:    :select
a:              :at             ; curieux: do [ é: :at ] fonctionne, mais pas do [ à: :at ] => donc 'a au lieu de 'à TODO les soucis de non-ascii devraient se résoudre d'eux-mêmes dans Red; voire dans Rebol3
saute:          :skip
extrait:        :extract

voir:           :view
page:           :layout         ; discutable: arrangement? mise-en-page? écran?

;bouton:         :button        ; mince, ça ne marche pas: le dialecte VID devrait se traduire d'une autre manière
;btn:            :btn

envoyer:        :send
lire:           :read

pourchaque:     :foreach
tantque:        :while
tous:           :all

fait:           :do

vers-argent:    :to-money
sépare:         :parse          ; discutable
alerter:        :alert


comment [
; quelques tests          some testing:
print "Les mots équivalents Frebol chargés: essais:"
print "Frebol equivalent words loaded; tests:"
pour i 1 5 1 [affiche rejoint ["Voilà la boucle numéro: " i]]
affich "Et maintenant..."
pour i 1 5 1 [affich  rejoint [" et voilà la boucle sur une seule ligne: " i]]
affiche ""
boucle 4 [affiche "Boucle"]
nom: "Personne"
prénom: "Paul"
affiche joint prénom nom
noms: ["Gérard Lambin" "Henry IV" "LaBielle de Cadix"]
affiche moule noms
affiche noms
ajoute noms joint prénom nom
ajoute noms 'nom
affiche reduit noms
affiche noms
affiche formate noms
affiche sonde noms
noms: suivant noms
affiche premier noms
]
