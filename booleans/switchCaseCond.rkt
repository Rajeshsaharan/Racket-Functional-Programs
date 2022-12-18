#lang racket

(require 2htdp/image)


(define IMAGE (rectangle 20 30 "solid" "red"))

;works like switch case for nested or multi statment

(cond [( > (image-height IMAGE) (image-width IMAGE)) "tall"][(= (image-height IMAGE) (image-width IMAGE)) "square"][else "wide"])