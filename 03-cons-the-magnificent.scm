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

; inserts the atom `new` to the left of the first occurrence of the
; atom `old` in `lat`
(define insertL
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ()))
      (else (cond
       ((eq? (car lat) old)
        (cons new (cons old (cdr lat))))
        (else (cons (car lat)
          ( insertL new old (cdr lat)))))))))

; subst replaces the first ocrrence of `old` in the `lat` with `new`
(define subst
  (lambda (new old lat)
    (cond
     ((null? lat) (quote ()))
     ((eq? (car lat) old) (cons new (cdr lat)))
     (else
      (cons (car lat)
            (subst new old (cdr lat)))))))

; subst2 replaces either the first occurrenceof `o1` or the first occurrenceof `o2`
; by `new`

(define subst2
  (lambda (new o1 o2 lat)
    (cond
     ((null? lat) (quote ()))
     (cond
      ((eq? (car lat) o1) (cons new (cdr lat)))
      ((eq? (car lat) o2) (cons new (cdr lat)))
      (else
       (cons (car lat)
             (subst2 new o1 o2 (cdr lat))))))))

; subst2 improved
(define subst-2
  (lambda (new o1 o2 lat)
    (cond
     ((null? lat) (quote ()))
     ((or
      (eq? (car lat) o1)
      (eq? (car lat) o2)
        (cons new (cdr lat))))
     (else (cons (car lat) (subst-2 new o1 o2 (cdr lat)))))))
