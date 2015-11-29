; #t or #f:
(lat? '(Jack Sprat could eat no chicken fat))
; #t, because each S-expression in the list is an atom.

(lat? '((Jack) Sprat could eat no chicken fat))
; #f, since the first S-Expression is a list

(lat? '())
; #t, because it does not contain a list

; lat is a list of atoms

(define lat?
  (lambda (l)
     (cond            ; let's ask some questions
       ((null? l) #t) ; is this an empty list?
       ((atom? (car l) (lat? (cdr l)))) ; is the first S-expression in the list an atom? is the rest an atom?
       (else #f))))   ; otherwise, it's not a list of atoms

; is this true?
(or (null? '())
   (atom? '(d e f g)))
; #t

; #t or #f?
(or (null? '(a b c))
    (null? '(atom)))

; `or` asks questions one at a time

(define member?
  (lambda (a lat)
    (cond
     ((null? lat) #f) ; asks if lat is a null list, if so, a is not a member
     (else ; no other questions to ask
      (or (eq? (car lat) a) ; since lat is not null, let's find out if `car` of `lat` is the same as `a` or in the rest of `lat`
          (member? a (cdr lat)))))))
