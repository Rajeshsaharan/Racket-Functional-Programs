
; ; we are designing a function that consume a root tree element and a string if we found in family tree
; retun name else retrun false

(define-struct node (name child))
; name is string and childs is listofNode
;;
;; childs is one of:-
;; -empty(if no childs are specifc person)
;; - (cons node listofNode)


(define S3 (make-node "rajesh" empty))
(define D1 (make-node "sunita" empty))
(define D2 (make-node "kavita" empty))
(define S4 (make-node "tekchand" empty))
(define D3 (make-node "sakku" empty))
(define S1 (make-node "prem singh" (list S3 D1 D2)))
(define S2 (make-node "dharmpal" (list S4 D3)))
(define P1 (make-node "maniram" (list S1 S2)))

;; string node -> string or false
;; string listofNode -> string or false

(define (find--node s n)
  (if (string=? (node-name n) s) (node-name n) (find--list s (node-child n)))
  )

(define (find--list s lon) (cond [(empty? lon ) false] [else (if (not (false? (find--node s (first lon)))) (find--node  s (first lon)) (find--list s (rest lon)))]))


(find--node "amit" P1)