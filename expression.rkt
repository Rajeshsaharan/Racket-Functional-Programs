#!/usr/bin/racket
#lang racket

;simple arthimatic operation
;simple expression that operate on numbers


(+ 7 8) ;expression --->gives value 
;rackets evaluates expression to produce values

(+ 3 (* 3 3)) 
(/ 12 (* 2 3))

;all of them primitive operation on operands
(sqr 4)
(sqrt 16)


;question write an expression for underroot 3**2 + 4 **2

;answer

(sqrt (+ (* 3 3) (* 4 4))) ;expression for solving pythogreous equation


;another way to do

(sqrt (+ (sqr 3) (sqr 4)))

;irrational number ----> that number cant finished

;example inexact number
(sqrt 2)