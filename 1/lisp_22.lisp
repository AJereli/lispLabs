|#   Определите функцию, которая обращает список (а b с) и разбивает его на уровни (((с) b) а).
 |#

(defun reverseWrap (l)
  (if (null (cdr l))
      l
      (list (reverseWrap (cdr l)) (car l))))
	  
	  
	 
(reverseWrap '(2 3 1 5 3))