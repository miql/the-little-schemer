(define add1
  (lambda (n)
    (+ n 1)))

(define sub1
  (lambda (n)
    (- n 1)))

(define o+
  (lambda (n m)
    (cond
     ((zero? m) n)
     (else
      (add1 (o+ n (sub1 m)))))))

; if `zero?` is like `null?` `add1` is like `cons`
; `cons` builds lists and `add1` builds numbers

(define o-
  (lambda (n m)
    ((zero? m) n)
    (else
     (sub1 (o- n (sub1 m))))))

; tup(le) is a list of numbers
'(8 55 5 555)

; addtup builds a number by totaling all the numbers in its arguments
(define addtup
  (lambda (tup)
    (cond
    ((null? tup) 0) ; terminal conditions
     (else
      (o+ (car tup) (addtup (cdr tup)))))))
