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

(defun fib-rec (n)
  "Fibonacci of N recursive call."
  (interactive "nInsert a number: ")
  (message "Result: %d" (fibo n)))

(defun fib-binet (n)
  "Binet algorithm of N."
  (interactive "nInsert a number: ")
  (message "Result: %d"
           (/ (- (expt *aur* n) (expt *nur* n))
              (sqrt 5))))

(defun fib-it-vect (n)
  "Interactive Fib of N using a vector."
  (interactive
   "nInsert a number: ")
  (let ((arr (make-vector n 0))                ;; arr[n]
        (i 2))                                 ;; i <- 2
    (aset arr 0 1)                             ;; arr[0] <- 1
    (aset arr 1 1)                             ;; arr[1] <- 1
    (while (< i n)
      (aset arr i (+ (elt arr (- i 1))         ;; arr[i] <- arr[i - 1] + arr[i - 2]
                     (elt arr (- i 2))))
      (cl-incf i))
    (message "Result: %d" (elt arr (- i 1)))))

(defun fib-it (n)
  "Interactive Fib of N without a vector."
  (interactive
   "nInsert a number: ")
  (let ((a 1)             ;; a <- 1
        (b 1)             ;; b <- 1
        (c 0)
        (i 2))            ;; i <- 2
    (while (< i n)
      (setq c (+ a b)     ;; c <- a + b
            a b           ;; a <- b
            b c)          ;; b <- c
      (cl-incf i))
    (message "Result: %d" b)))

;;; fib.el ends here
