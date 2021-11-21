(load "MergeSort.lisp")

(defun SortedItem (arr x)
    (GetItem
        (MergeSort arr)
        x
    )
)

(defun GetItem (arr x)
    (cond
        ((null arr) nil)
        ((= x 1) (car arr))
        (t (GetItem
            (cdr arr)
            (- x 1)
        ))
    )
)
