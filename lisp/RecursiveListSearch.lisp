(defun RecursiveListSearch (arr x)
    (cond
        ((null arr) nil)
        ((atom (car arr))
            (if (eq (car arr) x)
                x
                (RecursiveListSearch (cdr arr) x)
            )
        )
        ((listp (car arr)) (RecursiveListSearch (append (car arr) (cdr arr)) x))
    )
)
