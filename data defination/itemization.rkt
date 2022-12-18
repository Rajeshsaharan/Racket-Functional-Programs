#lang racket

;design a data defination for starting exam
;within 3 catagory

;; exam not started
;; exam will take 10 seconds to start
;; exam is started
;;exam is complete

;examCounterDown one of this-
; -false
; - Natural[1-10]
; - true
; -"complete"

; interpeter as
; -false means exam not started yet
; - Natural[1-10] time to remaining exam to start 10 to 0 second
; - true - exam has been started
; - "complete" exam has been completed

;example

(define EC1 false)
(define EC2 10) ; 10 second left to start exam
(define EC3 1) ; 1 second left to start exam
(define EC4 true) ; exam has been started
(define EC5 "complete") ;Exam has been completed

;template for itemization

(define (fn-for-count-exam ec)
        [(false? ec) (...)] ;for false atomic-distinct
        [((and (Number? ec)(<= 0 x) ;for Natural[1-10] interval atomic-non-distinct
     (< x 10))) (...x)] 
        [(true? ec) (...)] ; for true atomic distinct 
        [else (...)] ; for atomic-distinct string "complete"

)