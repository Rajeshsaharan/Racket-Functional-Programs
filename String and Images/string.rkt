#!/usr/bin/racket
#lang racket


;string

"apple" ; simple string
"rajesh" ; simple string

;important string method

(string-append "my name is rajesh " "saharan")

;in racket + primitive operation can not applied

; wrong 

; (+ "apple" " is Sweet") ;;; wrong


(string-length "rajesh") ;gives output 6 indexing start from 0 

(substring "amit" 2 3) ; works like (start_index stop_index)
