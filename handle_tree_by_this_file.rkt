;; handling tree by transversal tail recursion
(define-struct node (name house child))

(define (handle node) (local [

                              ; accu:- first is position track mention as position
                              ; second is a worklist accumulator struct track (node(a node) , parent_to_child(string)
                              (define-struct worklist (every_node parent_to_child))

                              (define (fn-for-node todo node parent_house_child position)
                               ; (...(node-name node ) (...parent_postion_house))
                                (fn-for-list (append (map (λ (k) (make-worklist k (node-house node))) (node-child node))
                                                     ; on node level we are passing below struct to their children 
                                                     ; here we are making of list of struct (make-worklist (every_node_to_visit, their_house))
                                                     todo) ...position))


                              ;; function for list

                              (define (fn-for-list todo ...position) (cond [(empty? todo) (...)]
                                                                           ; here we are checking to list by passing first / rest 
                                                                           [else (fn-for-node (rest todo) (worklist-every_node (first todo)) (worklist-parent_to_child (first todo)) ...position)]
                                                                           ))

                                






                              ]())
  )

