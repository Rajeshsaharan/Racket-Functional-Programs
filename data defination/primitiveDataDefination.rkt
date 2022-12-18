;data defination

;CityName is String 
; interpr. the name of city

;example
(define CN1 "jaipur")
(define CN2 "rawtsar")

#; ;template
(define (fn-for-cityname cn)
                (...cn)
                )
;template rules used non-distinct : string

;;function defination for fucntion

;problem -
;using the cityName data defination below design a function that produc true if the given city is best in the word

(check-expect (best? CN1) true)
(check-expect (best? CN2) false)


;;signatufre CityName -> bool
;; purpose - return true if city is jaipur



;(define (best? cn) #f) ;stub


;template

(define (best? cn) (...cn))


;code block

(define (best? cn) (string=? cn "jaipur")) ; if cityName is jaipur return true