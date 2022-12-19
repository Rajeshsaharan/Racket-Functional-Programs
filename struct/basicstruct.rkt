#lang racket

;like javascript object or python dictionary but cant hold key method of function like python

(define-struct mystruct ( x y)) ; (define-struct ( <struct-name> key1 key2))
(define  M1 (make-mystruct 3 6)) ;constructor
(mystruct-x M1) ;selctor key
(mystruct-y M1)

(mystruct? M1) ;true if the M1 is instance of this struct
