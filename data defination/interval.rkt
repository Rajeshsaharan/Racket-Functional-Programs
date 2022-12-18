;interval atomic-non-distinct data defination

;Natural[1-32]
;interp. 1-to 32 Numbers shows number of seat in a row

;example 

(define SN1 1); aisle
(define SN2 16) ; middle
(define SN3 32) ;aisle

;template

(define (fn-for-seat_number sn)
        (...sn) ;rule for body for atomic-non distinct value
)

;signature - > SeatNumber -> bool
;purpose return true if given seat is aisle(corner)

;(define (aisle? sn) false)

;template for data defination

(define (aisle? sn) (or (= sn 1)(= sn 32)))

;test or debug the program
(check-expect (aisle? 32) true)
(check-expect (aisle? 16) false)
(check-expect (aisle? 1) true)