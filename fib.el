;;; fib.el -- Summary

;;; Commentary:
;;; This package implements the various Fibonacci Algorithms

;;; Code:

(defconst *aur*
  (/ (+ 1 (sqrt 5))
     2)
  "Golden Ration indicated by PHI.")

(defconst *nur*
  (/ (- 1 (sqrt 5))
     2)
  "Complement of the Golden Ratio indicated by -PHI.")

(defun fibo (n)
  "Fibonacci of N recursive definition."
  (if (<= n 2)
      1
    (+ (fibo (- n 1))
       (fibo (- n 2)))))

(defun fib (n)
  "Fibonacci of N recursive call."
  (interactive "nInsert a number: ")
  (message "Result: %d" (fibo n)))

(defun fib_binet (n)
  "Binet algorithm of N."
  (interactive "nInsert a number: ")
  (message "Result: %d"
           (/ (- (expt *aur* n) (expt *nur* n))
              (sqrt 5))))

;;; fib.el ends here
