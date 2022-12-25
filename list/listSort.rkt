(define-struct student (course marks))
;student is (make-student string number)
; interp. (make-student) course is course name of relvent student and marks is  total obtained markes in course

;;example

(define S1 (make-student "mbbs" 260))
(define S2 (make-student "brt" 234))

;template rules used: -


(define (fn-for-student s)
(...(student-course s)(student-marks s))
)
; compound rule used two field value

;;

; lisofStudnt is one of :_
; - empty (base case)
; - a listofStudent is (cons Studnent listofStudent)

;example 

(define Los1 empty)
(define Los2 (cons (make-student "brt" 270) empty))
(define Los3 (cons (make-student "mbbs" 269) (cons (make-student "brt" 270)) empty)) ; 2 element

;template :_
(define (fn-for-los los)
    (cond   [(empty? los) empty]
            [else ...(fn-for-student (first los))
                        (fn-for-los (rest los))
            ]
    )
)

;function 
; ListofStudnet -> listofStudent

(check-expect (sort empty) empty)
(check-expect (sort (cons (make-student "amit" 267) (cons (make-student "manish" 244)) empty))
                    (cons (make-student "manish" 244) (cons (make-student "amit" 267)) empty)

)

;code-block
(define (sort los)
        (cond [(empty? los) empty]
              [else (compare (first los) (sort (rest los)))]
        
        )

)

;compare function
;student listofStudent -> listofStudnet
; produce new list of according to marks

#;
(define (compare student los) los) ;stub

(define (compare student los)
            (cond [(empty? los) (cons student empty)]
                  [else (if (> (student-marks student) (student-marks (first los))))
                     (cons (first los) (compare student (rest los)))
                     (cons student los) 
                  ]
            )

)
