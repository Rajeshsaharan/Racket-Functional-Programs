 ;__________________________________ tree of family __________________________________

; ; we are designing a function that consume a root tree element and a string if we found in family tree
; retun name else retrun false

(define-struct node (name house child))
; name is string  and || house is string where any node live || and childs is listofNode
;;
;; childs is one of:-
;; -empty(if no childs are specifc person)
;; - (cons node listofNode)


(define S3 (make-node "rajesh" "5dwd" empty))
(define D1 (make-node "sunita" "pallu" empty))
(define D2 (make-node "kavita" "sardarpura" empty))
(define S4 (make-node "tekchand" "4dwd" empty))
(define D3 (make-node "sakku" "meghana" empty))
(define S1 (make-node "prem singh" "5dwd" (list S3 D1 D2)))
(define S2 (make-node "dharmpal" "4dwd" (list S4 D3)))
(define P1 (make-node "maniram" "kanwani" (list S1 S2)))


;____________________________________end of family tree_________________________


;; so here we are using all accumulator to track state or progress of recursion

;; first we are designing a function that produce list if parent and child house same then build a list of their name


;; node -> listofString

;;(define (filter node) empty) ;stub

;_______________________________________________template without postion context accumulator____________________ _______________________
#;
(define (filter node) (local [
                              ; first define for element
                              (define (fn-for-element node) (...(node-name node) (node-name house) (fn-for-list (node-child))))

                              ;define for children
                              (define (fn-for-list lon ) (cond [(empty? lon) empty]
                                                               [(else ....(fn-for-element (first lon)) ; mutual recusrion
                                                                      (fn-for-list (rest lon))) ;self-refrence  recursion
                                                                      ]
                                                               ))

                              ] (fn-for-element node)))

;_______________________________________________________________________________________________________________



;___________________________________________template with postion context accumulator____________________________

#;
(define (filter node) (local [
                              ; first define for element
                              (define (fn-for-element node ...acc) ( ...acc (node-name node) (node-name house) (fn-for-list (node-child) ...acc)))

                              ;define for children
                              (define (fn-for-list lon ) (cond [(empty? lon) empty]
                                                               [(else ...acc (fn-for-element (first lon) ...acc) ; mutual recusrion
                                                                      (fn-for-list (rest lon) ...acc)) ;self-refrence  recursion
                                                                      ]
                                                               ))

                              ] (fn-for-element node ...acc)))


;______________________________________________________________________________________________________________


; as we know we must pass our parent's house to further next to list to so we can do that
#;
(define (filter node) (local [
                              ; first define for element
                              (define (fn-for-element node ...parent-house) ( ...parent-house (node-name node) (node-name house) (fn-for-list (node-child) ...parent-house)))

                              ;define for children
                              (define (fn-for-list lon ) (cond [(empty? lon) empty]
                                                               [(else ...acc (fn-for-element (first lon) ...parent-house) ; mutual recusrion
                                                                      (fn-for-list (rest lon) ...parent-house)) ;self-refrence  recursion
                                                                      ]
                                                               ))

                              ] (fn-for-element node ...parent-house)))




;________________________________________________________________________________________________________________________________________


;_________________________________________template with postion context accumulator _______________________________________

(define (filter2 node) (local [
                              ; first define for element
                              (define (fn-for-element node parent-house)  (if (string=? parent-house (node-house node))
                                                                              (cons  (node-name node) (fn-for-list (node-child node) (node-house node))) ; if parent house is same as node house then add item to list andf goes
                                                                                                                                                     ;for its child
                                                                              (fn-for-list (node-child node) (node-house node)) ; if parent house is not same then pass to child with their house name as accumulator
                                                                              ))
                              ;; first we accu area context
                              ;; first we pass " " empty string to root + base case
                              ;define for children
                              (define (fn-for-list lon parent-house) (cond [(empty? lon) empty]
                                                               [else (append (fn-for-element (first lon) parent-house) ; mutual recusrion ; fn-for-elemnt produce --> list
                                                                      (fn-for-list (rest lon) parent-house)) ;self-refrence  recursion
                                                                      ]
                                                               ))

                              ] (fn-for-element node "")))





(filter2 P1) ;; passing refrence to down to tree
