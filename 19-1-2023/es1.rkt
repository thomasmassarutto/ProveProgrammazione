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
  (lambda (matrice vettore)
    (helper matrice vettore '())
    ))

(helper
 (lambda (matrice vettore risultato)
   (if (null? matrice)
       risultato
       ;; else
       (append (matrix-vector-poduct (car matrice) vettore)
               (helper (cdr matrice) vettore ))
       )
   )
 )