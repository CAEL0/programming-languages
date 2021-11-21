(defun ReverseList (arr)
    (if (<= (length arr) 1)
        arr
        (append (ReverseList (cdr arr)) (list (car arr)))
    )
)
