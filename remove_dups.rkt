;;(1 2 3 3 4 5)--> (1 2 3 4 5)

; check 1 2 3 5 7 for 

(check-expect  (remove_dups 0 empty) empty)
(check-expect(remove_dups 0 (list 1)) (list 1))
(check-expect (remove_dups 0 (list 1 2)) (list 1 2))
(check-expect (remove_dups 0 (list 1 3 3)) (list 1 3))
(check-expect (remove_dups 0 (list 1 3 3 3 4 4 4 5 6 6 7 8 )) (list 1 3 4 5 6 7 8))
 
;(define (remove_dups lon) empty) stub
;    here we need accumulator to track progress through recursion



(define (remove_dups n lon) (cond [(empty? lon) empty]
                                [else (if (= (first lon) n ) (remove_dups (first lon) (rest lon))
                                          (cons (first lon) (remove_dups (first lon) (rest lon))))]
                                ))


