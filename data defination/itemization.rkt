#lang racket
(require 2htdp/image)
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
    (cond    [(false? ec) (...)] ;for false atomic-distinct
        [((and (Number? ec)(<= 0 ec) ;for Natural[1-10] interval atomic-non-distinct
     (< ec 10))) (...ec)] 
        [(true? ec) (...)] ; for true atomic distinct 
        [else (...)] ; for atomic-distinct string "complete"
    )
)

;define a function for generate image from examCountedown

;signature examCount-> Image
; purpose : - generate image according to countdown
; stub
;(define (examCount->Image ec) (text "stub_test" 24 "red")) ; stub

;template from examCount data defination

;code body

(define (examCount->Image ec) ;naming convention for writing function name to according to signature of function
  ;wrting condition keyword is very !important
    (cond    [(false? ec) (text "exam not started" 24 "red") ] ;for false atomic-distinct
        [(and (number? ec) (<= 0 ec) (< ec 10)) (text ec 24 "red")]                               ;for Natural[1-10] interval atomic-non-distinct
        [(true? ec) (text "exam started" 24 "green")] ; for true atomic distinct 
        [else (text "exam completed" 24 "yellow")] ; for atomic-distinct string "complete"
    )
)

(examCount->Image false)
(examCount->Image 2)
(examCount->Image true)
(examCount->Image "complete")