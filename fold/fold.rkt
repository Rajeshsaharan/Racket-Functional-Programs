; fold can be used on list type of x
; x is a number/element/string
; listofX is one of :-
; - empty
; - (cons x listofX)

;; template for listofX
#;
(define (fn-for-list lox)
            (cond [(empty? lox) (...)]
                  [else ...(first lox) (rest lox)]
            
            )
)

; replacing it with foldr 

(define (fold function base_case lox)  (cond 
                            [(empty? lox) base_case]
                            [else (function (first lox) (fold function base_case (rest lox)))]
                    
                    )

)


;; using fold function to add all data in the listofx (where x is number)

(fold + 0 (list 1 2 3 4))


;; multiply all the data present in the listofX (wheree x is the number)

(fold * 1 (list 1 2 3 4))


; make a copy of list of all the  data in listofX
(fold cons empty (list 1 2 3 4))


;; making fold function for tree like structure in

(define-struct node (name child))

; listofnode reprsent -empty / -(cons node listofNode)



;_________________________________________abstarct function to handle tree __________________________________
#;
(define (handle_node node ) (local [
                                                              ;; abstarct function for one node template
                                                              (define (fn-for-element node) (...(node-name node) 
                                                                                                (fn-for-list (node-child node)))) ; mutual recursion

                                                              ;;abstract function for list of element
                                                              (define (fn-for list lon) (cond [(empty? lon) empty]
                                                                                              [else ...(fn-for-element (first lon)) ; mutual recursion
                                                                                                   (fn-for-list (rest lon)) ;self-refrence recursion 
                                                                                                   ]
                                                                                              ))

                                                                                             

                                                              ] (fn-for-element node)))

 ;___________________________________________abstaract function complete_____________________________________________


 ; _______________________________________fold function for handle tree like structure_______________________________

  (define (fold-node  fun-node fun-list base_case node ) (local [
                                                              ;; abstarct function for one node template
                                                              (define (fn-for-element node) (fun-node (node-name node) ; (fun-node n lon)
                                                                                                (fn-for-list (node-child node)))) ; mutual recursion

                                                              ;;abstract function for list of element
                                                              (define (fn-for-list lon) (cond [(empty? lon) base_case]          ;;;; (fun-list n lon) 
                                                                                              [else (fun-list (fn-for-element (first lon)) ; mutual recursion
                                                                                                   (fn-for-list (rest lon))) ;self-refrence recursion 
                                                                                                   ]
                                                                                              ))

                                                                                             

                                                              ] (fn-for-element node)))



;______________________________________fold function complete for handle node_______________________________________________________




(define F1 (make-node "F1"  empty)) 
(define F2 (make-node "F2"  empty))
(define F3 (make-node "F3"  empty))
(define D1 (make-node "D1"  (list F1 F2))) 
(define D2 (make-node "D2"  (list F3)))
(define R1 (make-node "R1"  (list D1 D2)))


; making a list of all name string present in tree
;fun-node -> will be produce list (user-defined)
;fun-list -> program defined to combine all list


;fun-node can be defined outside the local or can be call outside the local world

(define (fun-node n lon ) (cons n lon)) ; take n and lon and produce list of (cons n lon)
;;in node example -> ((node-name node) (fn-for-list (node-child node)) --->  (cons (node-name node) (fn-for-list (node-child node)))


(fold-node fun-node append empty R1) ; produce list of all tree string




