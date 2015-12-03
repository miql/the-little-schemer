; remove a member
(define rember
  (lambda (a lat)
    (cond
      ((null? lat) (quote ()))
      (else (cond
             ((eq? (car lat) a) (cdr lat))
             (else (cons (car lat)
                         (rember (cons
                                  (car lat)
                                  (rember a (cdr lat)))))))))))

; what is (firsts  ((apple peach pumpkin)
;                   (plum pear cherry)
;                   (grape raisin pea)
;                   (bean carrot eggplant)) ?

'(a c e)

; what is (firsts '())
'()

; what is (firsts ((five plums)
;                  (four)
;                  (eleven green oranges))

; what is (first (((five plums) four)
;                  (eleven green oranges)
;                  ((no) more))

'((five plums) eleven (no))

; builds another list composed of the first S-expression of each internal list
(define firsts
  (lambda (l)
    (cond ; because we need to ask questions about the arguments
     ((null? l) '()) ; The First Commandment
     (else (cons (car (car l) ; Because we only have 2 questions to ask about `l` (null | non-empty)
                 (firsts (cdr l)))))))

; what is (insertR 'topping 'fudge '(ice cream with fudge for dessert)) ?
'(ice cream with fudge topping for dessert)

; (insertR 'jalepeño 'and '(taco tamales and salsa)) ?
'(taco tamales and jalepeño salsa)

; (insertR 'e 'd '(a b c d f g h))
'(a b c d e f g h)

; takes 3 args: the atoms `new`, `old`, and `lat`.
; the function insertR builds a lat with `new` inserted to the right
; of the first occurrence of `old`
(define insertR
  (lambda (new old lat)
    (cond
     ((null? lat) '())
     (cond
      ((eq? old (car lat))
       (cons new (cdr lat)))
      (else (cons (car lat
                       (insertR new old (cdr lat)))))))))
