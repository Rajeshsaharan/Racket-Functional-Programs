#!/usr/bin/racket
#lang racket

;how to design function
;signature , purpose, stub -->first step
;Examples (wrapped in check-expect)--->second step
;inventory-template & constant--->third step
;code body---->fourth step
;test and debug---->fifth step

;problem
; Design a function that consume a number and prouce twice that number call
;contd .... your function double ??

;Number -> Number  (signature)
;produce 2 times the given number (purpose)

;(define (double n) 0) (stub)

(check-expect (double 2) 4)  ;example /testes
(check-expect (double 3.2) (* 2 3.2)) ;example/tests

;(define (double n) (... n)) ;template
(define (double n) (* 2 n))



