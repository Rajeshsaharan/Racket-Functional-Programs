#lang racket 

(require 2htdp/image)

(cons "flames" empty) ; constructor for list "flames item will be added to empty list"
(define L1 (cons "flames" empty)) ; a list of one item

(cons 10 (cons 9 empty)) ;a list of 2 itmes
(cons "amit" (cons "rakesh" (cons "rahul" empty))) ;a list of 3 element


;example
(define L2 (cons 10 (cons 9 (cons 8 empty))))

(first L2) ;return first item
(rest L2) ;return all rest of item

; how to get second item
(first (rest L2))
(first (rest (rest L2))) ; third item

;empty
(empty? L1) ; if its empty it will return true else false
(empty? (rest L1)) ; true actually rest will pop first item from list 