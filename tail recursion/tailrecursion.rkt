;; tail recursion is a method to solve computional problem of recursion
;; we must use an accumulator to use tail recursion

;____________________________________ simple function_________________________

;; if we add n number
(define (sum n) (cond [(zero? n) 0]
                      [else (+ n (sum (- n 1))) ; tail position produce (base case -> 0 / reduction is (n-1)
                            ]
                      ))


(sum 10) ; 10 + 9 + 8 + 7 + 6 + 5 + 4... ;;more computional


;_____________________________________________abstract function_______________________

(define (sum2 n) (local [

                         ; local function
                         (define (add n) (cond [(zero? n) 0]
                                               [else (+ n (sum (- n 1))) ; tail position produce (base case -> 0 / reduction is (n-1)
                                                    ]
                                               ))


                         ] (add n) ))

(sum2 10)
;_____________________________________________________________________________________________


; __________________________tail recursion with accumulaor_________________________


(define (sum3 n) (local [

                         ; local function
                         ; practice for acc:- try to calculate accumulator from base case 
                        ; (sum3 3 0 ) 
                        ; (sum3 2 3 ) ;; according to this equation accu will be -> (n + first accu)
                        ; (sum3 1 5 )
                        ; (sum3 0 6 )
                         (define (add n acc) (cond [(zero? n) acc]
                                               [else (add (- n 1) (+ acc n)) ; tail position produce (base case -> 0 / reduction is (n-1)
                                                    ]
                                               ))


                         ] (add n 0) ; first accu will be zero
                   ))


(sum3 10)


