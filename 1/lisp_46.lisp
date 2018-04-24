|#  Предположим, что отец и мать некоторого лица, хранятся как значения соответствующих свойств у символа,
 обозначающего это лицо. Напишите функцию (РОДИТЕЛИ x)
 которая возвращает в качестве значения родителей, и предикат (СЕСТРЫ-БРАТЬЯ x1 x2),
 который истинен в случае, если x1 и x2 — сестры или братья, родные или с одним общим родителем. 
 |#

(defun addParents ( &key person mother father)
   (setf (get person 'mother) mother)
   (setf (get person 'father) father))
   
(defun parents (x)
	(list (get x 'mother) (get x 'father))
 )
 
 (defun bOrS (x1 x2)
	 (cond ((equal (parents x1) (parents x2)) t)
	  ((equal (cadr (parents x1)) (cadr (parents x2))) t)
  	  ((equal (car (parents x1)) (car (parents x2))) t)
	  (t nil)
	)
)
 
(addParents :person 'pers :mother 'juli :father 'vova)
(addParents :person 'pers2 :mother 'juli :father 'vova)
(addParents :person 'pers3 :mother 'lun :father 'vova)
(addParents :person 'pers4 :mother 'kris :father 'nik)
 
(bOrS 'pers 'pers2)
(bOrS 'pers3 'pers2) 
(bOrS 'pers3 'pers4)