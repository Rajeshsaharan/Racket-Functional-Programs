 
(require racket/list) ; for taken and drop 

; (8 7 1 4 2 3 6 5) ---> merge sort---> ( 1 2 3 4 5 6 7 8)



;; (list of number) -> (list of number)
;

(check-expect (merge-sort empty) empty)
(check-expect (merge-sort (list 1)) (list 1))
(check-expect (merge-sort (list 4 3)) (list 3 4))
(check-expect (merge-sort (list 3 2 1 4)) (list 1 2 3 4))





;(define (merge-sort lon) empty) ;stub

 ;template for genrative recursion

(define (merge-sort lon) (cond [(empty? lon) empty]
                               [(empty? (rest lon)) lon] ; here take first number of list & drop take the rest of number
                               [else (merge (merge-sort (take lon (quotient (length lon) 2))) (merge-sort (drop lon (quotient (length lon) 2)))) ]
                               ))
 






(check-expect (merge empty empty) empty)
(check-expect (merge empty (list 1 2 3)) (list 1 2 3))
(check-expect (merge (list 3 4 5 6) (list 1 2 7 8)) (list 1 2 3 4 5 6 7 8))
;; two same type make cross table
;; lon1 and lon2 must be sorted ind.
(define (merge lon1 lon2) (cond 
                           [(empty? lon1) lon2] ; 1 case according to table
                           [(empty? lon2) lon1]  ; 2 case
                           [else ;3rd case
                            (if (< (first lon1)(first lon2)) (cons (first lon1) (merge (rest lon1) lon2)) (cons (first lon2) (merge lon1 (rest lon2))))]
                           

                           ))
