; Q1
(define (compose-all funcs)
  (if (null? funcs)
    (lambda (x) x)
    (lambda (x) ((compose-all (cdr funcs)) ((car funcs) x)))
  )
)

; Q2
(define (tail-replicate x n)
  (define (helper x n result)
    (if (zero? n)
        result
        (helper x (- n 1) (cons x result))
    )
  )
  (helper x n nil)
)