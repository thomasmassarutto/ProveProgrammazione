;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define scalar-product ; val: numero
  (lambda (u v) ; u, v: liste numeriche
    (if (null? u)
        0
        (+ (* (car u) (car v)) (scalar-product (cdr u) (cdr v)))
        )))

(define matrix-vector-product
  (lambda (matrix vector)
    (cond ((null? matrix)
           null)
          
          (else
           (cons (scalar-product (car matrix) vector)
                 (matrix-vector-product (cdr matrix) vector))
           )
      )
      )
  )

(matrix-vector-product
 '((0.8 0.5 0.2) (0.1 1.0 0.4) (0.5 0.5 0.4))
 '(4.0 6.2 5.5) )