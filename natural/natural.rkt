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


; Natural -> Natrural
;consume naruralnt type data and produce natural 
;; 
#;
(define (sum n) 1) ; stub

(check-expect (sum 1) 1)
(check-expect (sum 2) 3)
(check-expect (sum 0) 0)
(check-expect (sum 3) 6) ; 3 + 2 +1 + 0 

;<template from natural stub>

(define (sum n)
        (cond [(zero? n) 0]
              [else (+ n (sum (sub1 n)))] ; base case + recursion
        )
)


; ;helper function

; (define (zero? n) (= 0 n)) ; already defined in required library