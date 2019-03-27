;45. Предположим, что у имени города есть свойства x и y, которые содержат
; координаты места нахождения города относительно некоторого начала координат. Напишите
 ;функцию РАССТОЯНИЕ a b, вычисляющую расстояние между городами a и b.

(print(defun def-coords (&key town x y)
	(setf(get town 'x) x)
	(setf(get town 'y) y)
)

(defun distance (a b)
	((lambda (xa ya xb yb) 
	(sqrt(+ (* (- xa xb) (- xa xb)) (* (- ya yb) (- ya yb))))
	) (get a 'x) (get a 'y) (get b 'x) (get b 'y))
)
)


(def-coords :town 'Saki :x 5 :y 5)
		 (def-coords :town 'Simferopol :x 10 :y 20)
		 (def-coords :town 'Alushta :x 50 :y 45)

;test
;(distance 'Saki 'Simferopol)
;==>15.811388
;(distance 'Simferopol 'Alushta)
;==> 47.169907
