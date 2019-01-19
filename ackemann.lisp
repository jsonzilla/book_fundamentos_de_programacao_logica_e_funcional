(defun ackermann (i j) (cond ((= i 0) (+ j 1))
                        ((= j 0) (ackermann (- i 1) 1))
                        (t (ackermann (- i 1) (ackermann i (- j 1))))))
(write(ackermann 3 2))
