;designing a list that contain information about a struct user type (naturally together)
(define-struct user (name age)) ; define struct
;user is (make-user string number); 
;interp. (make-user) is an user struct name represnt user's name and age present age of user struct

;example
(define U1 (make-user "rajesh" 23))
(define U2 (make-user "amit" 26))

;template

(define (fn-for-user user)
            (...(user-name user) (user-age user))

)

; template rule used - 2 field compound value


; design a list corrspending user
; ListOfUser contains is one of-
; -empty (base case)
; - a list of ListOfUser(self-refrence)
;interp. a list of user(struct) type aribratry size

;example

(define L1 empty)
(define L2 (cons (make-user "amit" 23) empty)) ;2 item (1 base case)
(define L3 (cons (make-user "rahul" 26) (cons (make-user "rajesh" 24) empty))) ; 3 item (1 base case)

;template

(define (fon-for-lou ListOfUser)
            (cond [(empty? ListOfUser) (...)] ;base case
                   [else ...
                   (fn-for-user (first ListOfUser)) ; refrence to user struct template
                   (fon-for-lou (rest ListOfUser) ) ; self -refrence to ListOfUser trust the natural

    
                   ]
            )
)

;template rules used'
; -compound 2 feild value
; -atomic
; - refrence
;- self refrence