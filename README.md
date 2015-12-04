The Little Schemer
==================

Examples from The Little Schemer

## The First Commandment

Always ask `null?` as the first question in expressing any functions.

## The Second Commandment

Use `cons` to build lists.

## The Third Commandment

When building a list, describe the first typical element, and then `cons` it onto the natural recursion.

# The Fourth Commandment

Always change at least one argument while recurring. It must be changed to be closer to termination. The changing argument must be tested in the termination condition:

when using `cdr`, test termination with `null?`
