;;; fib.el -- Summary

;;; Commentary:
;;; This package implement the various Fibonacci Algorithms

;;; Code:

(defconst *aur* (/ (+ 1 (sqrt 5)) 2) "PHI.")
(defconst *nur* (/ (- 1 (sqrt 5)) 2) "^PHI.")

(defun fibo (n)
  "Fibonacci of N recursive definition."
  (if (<= n 2)
      1
    (+ (fibo (- n 1)) (fibo (- n 2)))))

(defun fib (n)
  "Fibonacci of N recursive call."
  (interactive "nInsert a number: ")
  (message "Result: %d" (fibo n)))

(defun fib_binet (n)
  "Binet algorithm of N."
  (interactive "nInsert a number: ")
  (message "Result: %d" (* (/ 1 (sqrt 5)) (- (expt *aur* n) (expt *nur* n)))))

;;; fib.el ends here
