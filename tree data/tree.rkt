;multi dimesnional array or most complex data type 

; two dimesnsion data of array :_
;mutual refrence of data to each other or tree like structure
(define-struct element (name data subs))
; define a element to show (make-element string integer listofElement 
; interp. (make-element) name is string represnt -> name of element
;                        data is integar represnt -> value of data if data is 0 then subs is not ignored and and if data is value(not zero) subs is not ignored
;                        subs is listofElement -> represnt tree subs that contains another node

;listofElement is one of :-
; - empty (base case)
; - (cons Element listofElement)
; interp. contains list or Element type 

;; example

(define F1 (make-element "F1" 1 empty)) ; as we know if data is zero subs are ignored 
(define F2 (make-element "F2" 2 empty))
(define F3 (make-element "F3" 3 empty))
(define D1 (make-element "D1" 0 (list F1 F2))) ; as we know if data is zero than subs(listofElement is not ignored)
(define D2 (make-element "D2" 0 (list F3)))
(define R1 (make-element "R1" 0 (list D1 D2)))

; template for Element type
(define (fn-for-element e) 
      (...(element-name e) ;string
      (element-data e) ;int
      (fn-for-loe (element-subs e)) ; listofElement
      )
)


;template for listofEelment ->

(define (fn-for-loe loe)
        (cond [(empty? loe) (...)]
              [else (fn-for-element (first loe))
                    (fn-for-loe (rest loe))
                    
                    ]
        )
)


; design a function that consume element and produce sum of all value

;;function
;; Element -> integar
;; listofElemnt -> integar
;; prodcue the sum of all data and its subs
(check-expects (sum-element F1) 1)
(check-expects (sum-loe empty) 0)
(check-expects (sum-element F2) 2)
(check-expects (sum-element D1) (+ 0 1 2))
(check-expects (sum-element D2) (+ 0 3))
(check-expects (sum-element R1) (+ 0 0 0 1 2 3))




; stub
#;
(define (sum-element e) 0)
#;
(define (sum-loe loe) 0)



(define (sum-element e)
            (if (zero? (element-data e)) 
                  (sum-loe (element-subs e))
                  (element-data e)
            )
)

(define (sum-loe loe) 
            (cond [(empty? loe) 0]
                  [else (+ (sum-element (first loe)) (sum-loe (rest-loe)))]
            )
)


;; design a function that produce the list of elements and all sub type
;; Element -> listofNames
;; listofElement -> ??

;; produce list of element 
;;  
(check-expect (produce-list-from-loe empty) empty) ; base case
(check-expect (produce-list-from-element F1) (list "F1"))
(check-expect (produce-list-from-element F2) (list "F2"))
(check-expect (produce-list-from-element F3) (list "F3"))
(check-expect (produce-list-from-element D1) (list "D1" "F1" "F2"))
(check-expect (produce-list-from-element D2) (list "D2" "F3"))
(check-expect (produce-list-from-element R1) (list "R1" "D1" "F1" "F2" "D2" "F3"))








;(define (produce-list-from-element e) empty)
;(define (produce-list-from-loe) loe) empty)


(define (produce-list-from-element e)
      (cons (element-name e) (produce-list-from-loe (element-subs e)))

)

(define (produce-list-from-loe loe)
            (cond [(empty? loe) empty]
                  [else (append (produce-list-from-element (first loe)) (produce-list-from-loe (rest loe)))]
            )

)