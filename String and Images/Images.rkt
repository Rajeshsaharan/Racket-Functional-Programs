#!/usr/bin/racket
#lang racket


(require 2htdp/image)

(circle 10 "solid" "red") ; create new image object

(text "hello" 35 "orange") ; create image with text "hello"

;some methods on overlaying on image

(above (circle 20 "solid" "green") (rectangle 20 40 "solid" "red"))

(overlay (circle 20 "solid" "green") (rectangle 20 40 "solid" "red"))