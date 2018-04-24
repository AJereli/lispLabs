|#    Определите функцию, вычисляющую, сколько всего атомов в списке (списочной структуре).
 |#

(defun atomCnt (l)
  (cond ((null l) 0)
    ((atom (car l)) (+ 1 (atomCnt (cdr l))))
    (t (atomCnt (cdr l)))))
	
(atomCnt '(2 91 1))
(atomCnt '(2 (3) 1 1))