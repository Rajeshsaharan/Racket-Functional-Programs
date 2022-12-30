; filter list within a item

(define (filter2 n list) (cond [(empty? list) empty]
                              [else (append (compare n (first list)) (filter2 n (rest list)))]

))


(define (compare n first) (if (>= n first) empty (cons first empty)))


;library filter use with racket

(define (filter3 value list) (local [(define (pred? n) (> n value))]  (filter pred? list)))
; filter is a high order functio that takes function as callback and take one item to list and pass to every callback if it return true then return the value


;we are doing this using filter function

(define (filter4 value list) (filter (λ (n) (> n value)) list)) ; here local function work in lamda function






(filter3 4 (list 1 2 3 4 5 6))



(filter2 4 (list 1 2 3 4 5 6))



(filter4 4 (list 1 2 3 4 5 6))