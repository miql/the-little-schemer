The Little Schemer
==================

Examples from The Little Schemer

## The First Commandment

When recurring on a list of atoms, `lat`, ask two questions about it:

1. `(null? lat)`
1. `else`

When recurring on a number, `n`, ask two questionsabout it:

1. `(zero? n)`
1. `else`


## The Second Commandment

Use `cons` to build lists.


## The Third Commandment

When building a list, describe the first typical element, and then `cons` it onto the natural recursion.


## The Fourth Commandment

Always change at least one argument while recurring. It must be changed to be closer to termination. The changing argument must be tested in the termination condition:

- when using `cdr`, test termination with `null?`
- when using `sub1`, test termination with `zero?`
