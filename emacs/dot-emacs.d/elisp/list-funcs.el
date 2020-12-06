(defun zip (&rest xss)
  "Collects the n-th element in each list in XSS.
The returned list has the same length as the shortest provided list.

(zip '()) = '()
(zip '(1 2 3)) = ((1) (2) (3))
(zip '(1 2 3) '(?a ?b)) = '((1 . ?a) (2 . ?b))
(zip '(1 2 3) '(?a ?b) '(3 4 5 6)) = '((1 . ?a . 3) (2 . ?b . 4))"
  (cond ((null xss) '())
	((memq nil xss) '())
	(t (cons (mapcar 'car xss) (apply 'zip (mapcar 'cdr xss))))
	))

(provide 'list-funcs)
