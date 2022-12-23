#lang racket
;we use compound data if two or more values naturally fit together
; like first name , last name 
;PROBLEM :_ design a defination to reprsent hockey players including both firstname and last name


(define-struct player (firstName lastName))
;type comment : - Player is (make-Player string string)
;interp. (make-Player)  in a hockey player with firstName is First Name of Player 
;                                                - lastName is last Name of player
;example

(define P1 (make-player "rajesh" "saharan")) ;construct
(define P2 (make-player "amit" "lodha"))

;template

(define (fn-for-player p)
                (... (player-firstName p) ;selector ;string
                     (player-lastName p)            ;string 
                )
                )

; Template used : compound data two fields value

