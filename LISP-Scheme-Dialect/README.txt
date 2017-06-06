Problems
----------------------------

1. Write a Scheme function called "zip", which pairs up corresponding elements of its two arguments.
If one list is longer than the other, extra elements of the longer list are ignored.

2. Write a Scheme function called "count-elm", that takes a list and returns a list with each element
and its number of occurrences.

3. Write a Scheme function called "sublists", which returns all sublists of a given list. Note that lists are
ordered constructs, which means the order of elements in all sublists should be the same as the order
in the list itself. The following examples illustrate the operation of this function.

4. Write a Scheme function called "sort", which takes a simple numeric list as input and returns a sorted
list in descending order. Do not remove duplications.

5. Write a Scheme function called "loop" (loop min max fn) that behaves in a way similar to a loop. In
particular, the first two arguments (assumed to be integers) indicate the minimum and maximum
ranges for the loop variable. The third argument should be a function which expects a single argument
and performs operations associated with the loop body. The argument will correspond to the loop
count.

_________________________________________________________________________________________________________

To start the interpreter:
$ gsc

To load the file that contains Scheme code:
$ (load "foo.scm")

To execute:
> (name_of_your_function parameters)