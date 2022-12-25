;define natural racket data defination
; natural is one of :-
;; -0 (base case)
;; - (add1 Natural) ; self refrence
;interp.  A  natural number

(define N0 0) ; base example
(define N1 (add1 N0)) ; 0 +1(add1)
(define N2 (add1 N1)) ; 1 +1(add1)


;;template

(define (fn-for-natural n)
        (cond [(zero? n)(...)]
            [else ...n 
                (fn-for-natural (sub1 n)) ; self refrence 
            ]        
        )

)

;template rules used :_ 
; 1 compound one of two case
;; atomic-distinct --0
;; compound : - (add1 natural)
;; self refrence 