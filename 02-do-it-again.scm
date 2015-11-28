; #t or #f:
(lat? '(Jack Sprat could eat no chicken fat))
; #t, because each S-expression in the list is an atom.

(lat? '((Jack) Sprat could eat no chicken fat))
; #f, since the first S-Expression is a list

(lat? '())
; #t, because it does not contain a list

; lat is a lits of atoms

(define lat?
  (lambda (l)
     (cond          ; let's ask some questions
     ((null? l) #t) ; is this a null list?
     ((atom? (car l) (lat? (cdr l)))) ; is the first S-expression in the list an atom? is the rest an atom?
     (else #f))))   ; otherwise, it's not a list of atoms
