
; using accumulator tracking state of any time in recursion loop

; data defination ;;
(define-struct node (name house child))
; Node is (make-node string string listofNode) is person(person)
;                - name is string represnt the name of node(person)
;                - house is string represent the house of node(person)
;                - child is listofNode is list represent the list of child in terms of node(person)
;                - if any node(person) has zero child that means it represnt empty list child = empty


;; listofNode is one of:
;   - empty
;   - (cons node listofNode)

;; example -> 
(define P1 (make-node "abc" "h" empty))
(define R1 (make-node "kjj" "s" empty))
(define R2 (make-node "lsd" "k" empty))
(define P2 (make-node "rgf" "l" (list R1 R2)))
(define D1 (make-node "bbc" "l" (list P1 P2)))

;template rule for node:- 
#;
(define (fn-for-node node) (...(node-name node)
                               (node-house node)
                               (fn-for-list (node-child node)) ; mutual recursion
                               ))
#;
(define (fn-for-list lon) (cond [(empty? empty) (...)]
                                [else ...(fn-for node (first lon)) ; mutual recusrion
                                      (fn-for-list (rest lon)) ; self-refrence recursion
                                      ]
                                ))


;; design a function that consume node and produce a list of house that match to their parent
;; so we  have to pass an accumulator to parent to child


; Node -> listofString

(check-expect (myfunc D1) (list "l"))
(check-expect (myfunc P2 ) empty)

;(define (myfunc n) empty) ; stub



;code block
;; accumulator -> first set accumultor on root or base case

; (myfunc D1 "")
; (myfunc P2 "l")
;; it means we can pass accu to its child 


(define (myfunc node ) (local [(define (fn-for-node node acc) 
                                 (if (string=? (node-house node) acc) (cons (node-house node) (fn-for-list (node-child node) (node-house node)))
                                     (fn-for-list (node-child node) (node-house node)))  ; mutual recursion
                                 )

                               (define (fn-for-list lon acc) (cond [(empty? empty) empty]
                                                               [else (append (fn-for-node (first lon) acc ) ; mutual recusrion
                                                                             (fn-for-list (rest lon) acc)) ; self-refrence recursion
                                                                     ]
                                                               ))]  (fn-for-node node "")  )  )


