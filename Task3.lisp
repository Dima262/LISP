;3.Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим.

(print(defun razd (n m w)
(cond ((null w) nil)
((equal (car w) m) (cons n (razd n m (cdr w))))
((cons (car w) (razd n m (cdr w)))))
       )
)
;Test
;(print(razd 6 7 '(2 4 3 6 7 )))
;==>(2 4 3 6 6) 
