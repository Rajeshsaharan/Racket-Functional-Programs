#lang racket

(require 2htdp/image)
(require 2htdp/universe)
;design a a program where can move x0 to xend

;;title ;- a cat that walks from left to right accross the window

;constant

(define WIDTH 500)
(define HIEGHT 400)
(define CENTER_Y (/ HIEGHT 2)) ; mid of y cordinate
(define BACKGROUND (empty-scene WIDTH HIEGHT)) ; for constant backgroud
(define CAT_IMAGE (text "cat" 25 "grey"))

;data defination according to changing state

;Cat is Number
; inteerp. x postionof cat in screen corrdinate
(define C1 0) ; example
(define C2 (/ WIDTH 2)) ; in the middle of x-cord
(define C3 WIDTH) ;example in the end

#;
(define (fn-for-cat c) (...c)) ; template rule used atomic non-distinct : Number


;---------------------------
;function

;main function using big-bang
;Cat-> Cat
;; start the program with main function
(define (main c)                  ;cat
  (big-bang c (on-tick move-catX) ; Cat-> Cat
              (on-draw draw-cat) ; Cat -> Image
              (on-key handle-key))) ; Cat  key-event-> Cat 


;WISH LIST

;move-catX function
;signature Cat-> Cat
;produce next cat by adavancing it 1 pixel to right
;!!! -> REMOVE THIS MARKS AFTER COMPLETEING FUNCTION

;<template is used by cat atomic-non-distinct>
;(define (move-catX c) 0) ;stub
; CODE BLOCK

(define (move-catX c) (+ c 1))

(check-expect (move-catX 2) 3) ;test


;draw-cat
;signature ;-> Cat-> Image
; render the image at apporipiate place on background
;!!!
;(define (draw-cat c) BACKGROUND) ;stub
;<template for cat atomic-non-distinct>
;code-block
(define (draw-cat c) (place-image CAT_IMAGE c CENTER_Y BACKGROUND)) ; place-image is primitve data

; test
(check-expect (draw-cat 4) (place-image CAT_IMAGE 4 CENTER_Y BACKGROUND))

;handle-key
;signature ; Cat key-event -> Cat
; purpose : to restart cat while pressing space key

#;
(define (handle-key c key-event) 0) ;stub

;template for keyevent and Cat


#;
(define (handle-key c key-event) ; for larger enumaration specify particular case in cond question and answer and more case will be handled by else statement
           [(key? key-event " ") (...c)]) ; c is only applicable here in answer so atomic-nod-distinct : Number rules used           [else (...c)])

;code-block
(define (handle-key c key-event)
                     (cond [(key=? key-event " ") 0]
                      [else c] ; while pressing another key expect space
                      ))





;test
(check-expect (handle-key 10 "a") 10)
(check-expect (handle-key 20 " ") 0)

