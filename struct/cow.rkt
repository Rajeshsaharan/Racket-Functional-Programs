
(require 2htdp/image)

(require 2htdp/universe)
;wrting a cow program within wedge using 

;define constant

(define COW_IMAGE_L (text "L-Rcow" 25 "red"))
(define COW_IMAGE_R (text "R-Lcow" 25 "red"))
(define WIDTH 400) ;width of window
(define HEIGHT 500) ; height of window
(define BACKGROUND (empty-scene WIDTH HEIGHT ))
(define CENTER_Y (/ HEIGHT 2)) ; center of y program

; define data defination of terms of x & dx
(define-struct cow (x dx))
; cow is (make-cow Natural[1-WIDTH] integar)
; interp. x is x cordinate of cow and dx is velcoity if 
;     if +3 means -> going left to right with speed of +3 pixel per tick
;     if -3 means -> going right to left with speed of -3 pixel per tick
;example
(define C1 (make-cow 0 3)) ; start postion going left to right with speed of 3
(define C2 (make-cow 20 3)) ; middle postion going left to right with speed of 3
(define C3 (make-cow WIDTH -3)) ;end postion going right to left with speed of 3
(define C4 (make-cow 20 -3)) ; middle postion going right to left with speed of 3

; Template

#;
(define (fn-for-cow c) 
      (... (cow-x c) (cow-dx c))
    )

;template rules used: compound data with two fields

;function 
;cow -> cow

(define (main c)
        (big-bang c 
        (on-tick next-cow) ; cow -> cow ; next postion of cow
        (on-draw draw-cow) ; cow -> Image
        ;(on-key handle-key) ; cow keyEvent -> cow
        )
)

;Cow->Cow
; increase x by dx & bounce the cow at edge

(check-expect (next-cow (make-cow 10 3)) (make-cow (+ 10 3) 3)) ;means left to right by + 3 pixel
(check-expect (next-cow (make-cow 20 -3)) (make-cow (- 20 3) -3)) ; means right to left by -3 pixel per second

(check-expect (next-cow (make-cow (- WIDTH 3) 3)) (make-cow WIDTH 3)) ;return to edge on right
(check-expect (next-cow (make-cow 3 -3)) (make-cow 0 -3)) ; return to edge on left

(check-expect (next-cow (make-cow (- WIDTH 2) 3)) (make-cow WIDTH -3)) ; prevent to pass the right edge of window
(check-expect (next-cow (make-cow 2 -3)) (make-cow 0 3)) ; preven to pass left and change direction 


;template from cow data defination

(define (next-cow c)
            (cond [(> (+ (cow-x c ) (cow-dx c)) WIDTH) (make-cow WIDTH (- (cow-dx c))) ] ;prevent to pass the right side and change velcoity to nagative
                  [(< (+ (cow-x c) (cow-dx c)) 0) (make-cow 0 (- (cow-dx c)))] ; prevnt tp pass the left side and change velcity to postive
                  [else (make-cow (+ (cow-x c) (cow-dx c)) (cow-dx c))]        
            )
)


;on-draw function
;cow-> Image
; generate specific image according to cow's direction and value
#;
(define (draw-cow c) (text "test" 24 "red")) ;STUB
;example tese
(check-expect (draw-cow (make-cow 20 3)) (place-image COW_IMAGE_L 20 CENTER_Y BACKGROUND))
(check-expect (draw-cow (make-cow 20 -3)) (place-image COW_IMAGE_R 20 CENTER_Y BACKGROUND))
(check-expect (draw-cow (make-cow 20 0)) (place-image COW_IMAGE_R 20 CENTER_Y BACKGROUND))


; template used compound data

(define (draw-cow c)
         (cond [(> (cow-dx c) 0) (place-image COW_IMAGE_L (cow-x c) CENTER_Y BACKGROUND)]
               [else (place-image COW_IMAGE_R (cow-x c) CENTER_Y BACKGROUND)]
               ))

;handle-key function
;cow keyevent -> cow
; interactive way to handle key press on keyboard

(define (handle-key c keyEvent) c) ;stub