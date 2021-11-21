(defun Factorial (x)
    (cond
        ((= x 0) 1)
        ((> x 0) (* x (Factorial (- x 1))))
        (t nil)
    )
)
