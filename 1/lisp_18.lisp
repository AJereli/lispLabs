|#  Определите предикат, проверяющий, является ли аргумент одноуровневым списком.
 |#

(defun isOneLvl (lst)
  (cond ((null lst) t)
        ((listp (car lst )) nil)
        (t (onelvl(cdr lst)))
))      


(isOneLvl '(2 3 1))
(isOneLvl '(2 (3) (2))