#lang racket


;data defination describe

; -how to form data new type
; - how to reprsent information as data
; - how to interpret data as information
; -template for operating on data


;a systematic program for traffic light signal

;data defination

;TLColor is of of :
; -1
; -2
; -3

; intero. color of a traffic light 0 for red , 1 yellow , 2 green

; template for data defination
; template skelton for one argumnet function that consume data of this type

(define (fn-for-tlcolor c) 
                    (cond [(=c 0) (...)]
                    [(=c 1) (...)]
                    [(=c 2)(...)]
                    ))

;function recipe

;TLColor -> TLColor
;produce next color of traffic light

(check-expect (next-color 0) 2)
(check-expect (next-color 0) 2)
(check-expect (next-color 0) 2)

;(define (next-color c) 0) ;stub
;now we are idea of c what data type isss.......
;template for TLcolor data defination


(define (next-color c) cond [(= c 0) 2][(= c 1) 0][= c 2] 1) ;code block

