#!/usr/bin/racket
#lang racket
(require 2htdp/image) ;for using image instance

(define HEIGHT 400)
(define WIDTH 300)


;boolean-two values
true 
false
(> HEIGHT WIDTH) ;true
(< HEIGHT WIDTH)  ; false

;for string compare

(string=? "foo" "bar") ;false



;if/else                  width height ; remember by who (world health orginsation)
(define IMAGE1 (rectangle 30 40 "solid" "red"))
(define IMAGE2 (rectangle 40 30 "solid" "blue"))

(if (< (image-width IMAGE1) (image-width IMAGE2)) "IMAGE2 is wide" "IMAGE1 is wide")
;(if  (question expression that provides true or false) "true value"  "false value")