(load "MergeSort.lisp")

(defun BinarySearch (arr x)
    (SortedBinarySearch
        (MergeSort arr)
        x
        1
    )
)

(defun SortedBinarySearch (arr x idx)
    (cond
        ((null arr) nil)
        ((= (car arr) x) idx)
        ((= (length arr) 1) nil)
        ((> (car (RightHalf arr (HalfLength arr))) x)
            (SortedBinarySearch
                (LeftHalf arr (HalfLength arr))
                x
                idx
            )
        )
        (t
            (SortedBinarySearch
                (RightHalf arr (HalfLength arr))
                x
                (+ idx (HalfLength arr))
            )
        )
    )
)

(defun HalfLength (arr)
    (values (truncate (length arr) 2))
)
