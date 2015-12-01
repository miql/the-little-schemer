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

