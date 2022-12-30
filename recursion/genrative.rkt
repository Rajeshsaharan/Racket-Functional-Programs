;
;base case where we must stop
; reduction case 


; countdown generative recursion

(define (countdown n)
        if (= n 0) empty (cons n (countup (- n 1))) 
)

; base case - (=  n 0)
; reduction step - (- n 1)