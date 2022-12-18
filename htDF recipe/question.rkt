#lang racket

; a function called yell that consume string like "hello" and adds "!"
;to produce string like "hello!"

;Signature 

;; string -> string

;purpose
;; add a special mark to string
;stub

;;(define (yell some_string) string)

;; template

(check-expect (yell "hello")  "hello!")
(check-expect (yell "ram-ram") "ram-ram!")

;;template

;(define (yell some_string) (... some_string))

;;code body

(define (yell some_string) (string-append some_string "!"))