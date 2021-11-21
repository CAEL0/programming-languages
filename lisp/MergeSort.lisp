(defun MergeSort (arr)
    (if (<= (length arr) 1)
        arr
        (Merge
            (MergeSort (RightHalf arr (/ (length arr) 2)))
            (MergeSort (LeftHalf arr (/ (length arr) 2)))
        )
    )
)

(defun Merge (left right)
    (cond
        ((null right) left)
        ((null left) right)
        ((< (car left) (car right))
            (cons
                (car left)
                (Merge
                    right
                    (cdr left)
                )
            )
        )
        (t
            (cons
                (car right)
                (Merge
                    left
                    (cdr right)
                )
            )
        )
    )
)

(defun LeftHalf (arr n)
    (if (<= n 0)
        nil
        (cons (car arr) (LeftHalf (cdr arr) (- n 1)))
    )
)

(defun RightHalf (arr n)
    (if (<= n 0)
        arr
        (RightHalf (cdr arr) (- n 1))
    )
)
