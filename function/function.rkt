#!/usr/bin/racket
#lang racket
(require 2htdp/image)

;define an function that rotate every image instance by 50 degree


(define (myfunc shape)
        (rotate 50 shape) ;actully return this 
)

;so now we must define one shape

(define MY_SHAPE (text "please dont do this" 34 "green"))

;passing through function

(myfunc MY_SHAPE) ;one way
(myfunc (text "please dont do this again" 39 "purple"))


;type annoatation

(define (mytest? n) true) ;for bool values

;;to check type safty we can use ? so if we use ? it means it must return true or false by passing to boolean?
