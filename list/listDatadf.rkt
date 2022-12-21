;imagine you are designing an program to favourite team in IPL 
;first convert information in data
;; 
;;Rajasthan     || "rajasthan" ; represnt by string 
;; Bangolre     || " Banglore"
;; 
;type comment
;ListofString is one of :-
; - empty
; - (cons string ListOfString) ; a self refrence

;example
(define LOS1 empty)
(define LOS1 (cons "rajasthan" (cons "banglore" empty)))

;template

(define (fn-for-los los)
            (cond  [(empty? los) (...)] ;atomic-distinct empty template rule used
                   [... (first los)  ; string
                   (fn-for-los (last los))] ; last los is string; self refrence listOfString data 
                   ; compound data of cons template rules used 
            )
)

;template rule used
; -one of : 2 case
; -atomic-distinc : empty
; - compound data rules used cons 


;design a function that return true if listOfstrinf contains "rajasthan"
;listOfString -> bool
; produce true if listOfstring contains string "rajasthan"

(check-expect (contain-rajasthan? empty) false)
(check-expect (contain-rajasthan? (cons "rajasthan" empty)) true)

;stub
(define (contain-rajasthan? listOfString) false)

;<template from listofString data types >

(define (contain-rajasthan? listOfString)

              (cond       [(empty? los) false]
                     [else (if (string=? "rajasthan" (first listOfString)) "true" (contain-rajasthan? (rest listOfString)))
                           
                     ]
              ))