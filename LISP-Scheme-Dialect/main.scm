;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; This section merges two lists, size of result list is equal to the size of small list ; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (zip list1 list2)
	(cond
		((null? list1) '())
		((null? list2) '())
		(else
			(cons (list (car list1) (car list2)) (zip (cdr list1) (cdr list2)))
		)
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;; This section finds all sublists of a given list ;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (sublists lst)
	(if (null? lst) '(())
		(let ((restList (sublists (cdr lst))))
			(append (map (lambda (subList) (cons (car lst) subList)) restList) restList)
		)
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;; This section sorts a given list in descending order ;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define findMax (lambda (ls) 
		(if (pair? ls)
			(let ( (firstItem (car ls)) (remainingList (cdr ls))) 
				(if (null? remainingList) 
					firstItem 
					(let ((maxNumber (findMax remainingList))) 
						(if (> firstItem maxNumber) 
							firstItem
							maxNumber
						)
					)
				)
			)
		)
	)
)

(define (restList lst item)
	(cond
		((null? lst) '())
		((eq? item (car lst)) (cdr lst))
		(else 
			(cons (car lst) (restList (cdr lst) item))
		)
	)
)

(define (sort lst)
	(if(null? lst)
		'()
		(let ((maxNum (findMax lst)))
			(let ((rlist (restList lst maxNum)))
				(cons maxNum (sort rlist)) 
			)
		)
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; This section counts the number of each elements in a given list ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define deleteItem
	(lambda (item listt)
		(cond
			((null? listt) '())
			((equal? item (car listt)) (deleteItem item (cdr listt)))
			(else (cons (car listt) (deleteItem item (cdr listt))))
		)
	)
)

(define (countOccurence x lst)
	(cond ((null? lst) 0)
		((eq? x (car lst)) (+ 1 (countOccurence x (cdr lst))))
		(else   (countOccurence x (cdr lst)))
	)
)

(define (count-elm lst) 
	(if (null? lst)
		'()
		(cons (list (car lst) (countOccurence (car lst) lst)) (count-elm (deleteItem (car lst) lst)))
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; This section iterates the given function in a range between the given elements ;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (loop x y func)
	(begin
		(if(< x y)
			(begin
				(func x)
				(set! x (+ 1 x))
				(loop x y func)
			)
			(if(> x y)
				(begin
					(func x)
					(set! x (- x 1))
					(loop x y func)
				)
				(func x)
			)
		)
	)
)
