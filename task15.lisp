;15. Определите функцию, вычисляющую скалярное произведение векторов, за-данных списками целых чисел.   
(print(defun sc-prod (x y)

	((and (null x) (null y)) 0)
        
	(t (+ (* (car x) (car y)) (sc-prod (cdr x) (cdr y))))))


;(print(sc-prod '(1 2 3) '(1 2 3)))  
;==> 14
