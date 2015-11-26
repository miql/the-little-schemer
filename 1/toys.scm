; an atom is a string of characters
'atom

; an atom is a string of characters beginning w/ a letter
'turkey

; a string of digits is an atom
1492

; a string of one char is an atom
'u

; an atom
'*abc$

'(atom)

; a list
'(atom turkey or)

; not a list because the two expressions
; are not enclosed by parentheses
'(atom turkey) or

; two S-expressions enclosed by parens
'((atom turkey) or)

; all atoms are S-expressions
'xyz

; all lists are S-expressions
'(x y z)

'((x y) z)

'(how are you doing so far)

; a collection of S-expressions
'(((how) are) ((you) (doing so)) far)

(((how) are) ((you) (doing so)) far)

; empty list
'()

; not an atom, just a list
'()

; collection of empty lists
'(() () () ())

; what's the `car` of (a b c) ?
; a -- first atom in the list
'(a b c)

; what's the car of '((a b c) x y z) ?
; (a b c) -- first S-expression of this
; non-empty list
'((a b c) x y z)

; what is the car of 'hotdog
; cannot ask for the `car` of an atom
'hotdog

; what is the `car` of '() ?
; cannot ask for the car of an empty list
'()

;;;;;;;;;;;;;;;;;;;;
;; The Law of Car ;;
;;;;;;;;;;;;;;;;;;;;

; The primitive `car` is defined only for non-empty lists.

; what is the car of `l`
; where
; `l` is (((hotdogs)) (and) (pickle) relish) ?
; ((hotdogs)) -- first S-expressions of `l`
'(((hotdogs)) (and) (pickle) relish)

; what is (car (car '(((hotdogs)) (and))))
'(hotdogs)

; what is the `cdr` of (cdr '(a b c))
; '(b c) is the list without the (car '(a b c))
'(b c)

; what is the `cdr` of ((a b c) x y z) ?
'(x y z)

; what is the `cdr` of `(hamburger)
'()

; what is (cdr '((x) t r)) ?
'(t r)

; what is (cdr 'hotdogs)
; you cannot ask for the cdr of an atom

; what is (cdr '())
; you cannot ask for the cdr of the null list


;;;;;;;;;;;;;;;;;;;;
;; The Law of Cdr ;;
;;;;;;;;;;;;;;;;;;;;

; The primitive `cdr` is defined only for non-empty lists.
; The cdr of any non-empty list is always another list.

; what is (car (cdr '((b) (x y) ((c))))) ?
'(x y)

; what is (cdr (cdr ((b) (x y) ((c))))) ?
'( (x y) ((c)))
'(((c)))

; what is (cdr (car '(a (b (c)) d)))
; you cannot ask for the cdr of an atom

; what is the `cons` of the atom 'peanut and the list '(butter and jelly) ?
'(peanut butter and jelly)

; what is (cons '((help) this) '(is very ((hard) to learn)))
'(((help) this) is very ((hard) to learn))

; what is (cons '(a b (c)) ()) ?
'((a b (c)))

; what is (cons 'a ()) ?
'(a)

; what is (cons '((a b c)) 'b) ?
; cannot `cons` onto an atom -- must be a list

; what is (cons 'a 'b)
; cannot `cons` onto an atom -- must be a list

;;;;;;;;;;;;;;;;;;;;;
;; The Law of Cons ;;
;;;;;;;;;;;;;;;;;;;;;

; The primitive `cons` takes two arguments.
; The second argument to `cons` must be a list.
; The result is a list.

; what is (cons 'a (cdr '((b) c d)))
'(a c d)

;'() is the null list

;;;;;;;;;;;;;;;;;;;;;;
;; The Law of Null? ;;
;;;;;;;;;;;;;;;;;;;;;;

; The primitive `null?` is defined only for lists.
