(defun ListSearch (arr x) 
    (cond
        ((null arr) nil)
        ((eq (car arr) x) x)
        (t (ListSearch (cdr arr) x))
    )
)
