
;_______________________________________________________________________________________________________________________________

;design a function that return total number node in tree
#;


(define (add_all node) (local [
                              ; first define for element
                              (define (fn-for-element node total_node)   (fn-for-list (node-child node) (add1 total_node)))

                              ; accu ---start from zero
                              ;define for children
                              (define (fn-for-list lon total_node ) (cond [(empty? lon) total_node]
                                                               [else (+ (fn-for-element (first lon) total_node) ; mutual recusrion
                                                                      (fn-for-list (rest lon) total_node)) ;self-refrence  recursion
                                                                      ]
                                                               ))

                              ] (fn-for-element node 0)))






;(add_all P1) ; wrong output

; to make tail position we should follow the some step

;_______________________________________________________________tail postion recursion with worklist accumulator_____________________



#;
(define (add_all node) (local [
                              ; first define for element
                              (define (fn-for-element node total_node)   (fn-for-list (node-child node) (add1 total_node)))

                              ; accu ---start from zero
                              ;define for children
                              (define (fn-for-list lon total_node ) (cond [(empty? lon) total_node]
                                                               [else
                                                               ; (+ ----------> to making tail recursive..
                                                                 (fn-for-element (first lon) (rest lon) total_node) ; mutual recusrion
                                                                ;  (fn-for-list (rest lon) total_node)) ;self-refrence  recursion ---------> to making tail recursive
                                                                      ]
                                                               ))

                              ] (fn-for-element node 0)))
;___________________________________________________________________________________________________________________________________________

(define (add_all node) (local [
                              ; first define for element
                              (define (fn-for-element node todo total_node)   (fn-for-list (append (node-child node) todo) (add1 total_node)))

                              ; accu ---start from zero
                              ;define for children
                              (define (fn-for-list todo total_node ) (cond [(empty? todo) total_node]
                                                               [else
                                                               ; (+ ----------> to making tail recursive..
                                                                 (fn-for-element (first todo) (rest todo) total_node) ; mutual recusrion
                                                                ;  (fn-for-list (rest lon) total_node)) ;self-refrence  recursion ---------> to making tail recursive
                                                                      ]
                                                               ))

                              ] (fn-for-element node empty 0)))

(add_all P1)