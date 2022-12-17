#!/usr/bin/racket
#lang racket


(require 2htdp/image) ;for using image instance


(define WIDTH 400) ;defining a constant
(define HIGHT 300) 

WIDTH ;accessing constant

(* WIDTH HIGHT) ;getting area evaluating expression in values using constant



;define an image as a constant

(define MY_TEXT (text "Rajesh" 35 "red"))
(rotate -10 MY_TEXT)

;also can be stored in another way

(define MY_MINUS_ROATATED_IMAGE (rotate -10 MY_TEXT))