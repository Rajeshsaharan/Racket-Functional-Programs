;; a best example of local + accu + recursion :::::

;; (list 1 2 3 4 5 6) ---> (list 1 6 2 3 4 5)


(define (sort1 list) (local [
                            ; remove last item from list (easily can access by (= 0 (- (length list) 1)) --> true last item is there
                            (define (remove_last list) (cond [(empty? list) empty]
                                                             [else (if (= 0 (- 1 (length list))) empty ; stop the recursion and dont this elemnt to build list
                                                                          (cons (first list) (remove_last (rest list))))] ; else build list and self-refrence recursion
                                                             ))
                             ; remove first item from list using accumulator (no length specific in recursive) (= 1 acc) --> true if accumulator increase 1 by every recursive call 
                             (define (remove_first list acc) (cond [(empty? list) empty]
                                                              [else (if (= 1 acc) (remove_first (rest list) (add1 acc)) ; dont stop the recursion and dont add that element to build list but procced to next element using accumulator or self-refrence recursion
                                                                         (cons (first list) (remove_first (rest list) (add1 acc))))]))
                               ; insert all list using list refs
                             (define (insert_all_list list acc) (append (cons (list-ref list 0) (cons  (list-ref list (- (length list) 1)) empty)) (remove_first (remove_last list) acc)))



                            ] (insert_all_list list 1)) )




(sort1 (list 1 2 3 4 5 6))
