;(list 1 2 3 4 5 ) --> (1 4)


; skip n between array 
(define (handle list n) (local ; n step to skip
                        ;acc store
                        ;(fn-for-list (list 2, 3, 4)  0) 
                        ; (fn-for-list (list  3 4)    2) 
                        ; (fn-for-list (list    4)    1)
                        ; (fn-for-list (list     )    0) 
                        [(define (fn-for-list list acc)  (cond [(empty? list) empty ]
                                                                  [else (if (= 0 acc) (cons (first list) (fn-for-list (rest list ) n)) (fn-for-list (rest list) (sub1 acc)))]
                                                                  )) ]
                        
                         (fn-for-list list 0)))




(handle (list 1 2 3 4 5) 4)