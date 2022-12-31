; making a function that consume a list with node struct and add all of them 

; (list (1 ,0) (2, 2) (1, 2)) --> add ---> produce number

;; here we are using fold abstract tail recursion everything



(define-struct node (x y))

(define (sum2 fun-node fun-list  list) (local [

                                              

                                               ; fun-list is program defined add them togather
                                               ;; here test to accu

                                               ;(fn-for-list (list (1 2) (0 1)  0)
                                               ;(fn-for-list (list      (0 1)   3)
                                               ;(fn-for-list (list          )   4 )
                                               ;
                                                        
                                                        
                                               (define (fn-for-list lon acc) (cond [(empty? lon) acc]
                                                                                   ;[else ...(first lon)
                                                                                   ;   (rest lon)]

                                                                                   ;  [else (fun-list (fun-node (first lon) (fn-for-list (rest lon))))]
                                                                                   ; so we want to set tail recursion to we must setup acc
                                                                                   [else (fn-for-list (rest lon) (fun-list acc (fun-node (first lon))))]
                                                                                   ))] (fn-for-list list 0))



  )

(define N1 (make-node 1 2))
(define N2 (make-node 1 0))

(define L1 (list N1 N2))


;; fun node can be defined local but we defined outside
;;fun-node
(define (fun-node node) (+ (node-x node) (node-y node)))



(sum2 fun-node + L1)
