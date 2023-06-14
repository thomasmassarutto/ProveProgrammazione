;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; lunghezza della soprasequenza comune più corta di due sequenze di caratteri u e v
; Ricorsione ad albero
(define lscs ; val: intero
  (lambda (u v) ; u, v: stringhe
    (cond ((string=? u "")
           (string-length v))
          
          ((string=? v "") 
           (string-length u))
          
          ((char=? (string-ref u 0) (string-ref v 0))
           (+ 1 (lscs (substring u 1) (substring v 1)))
           )
          
          (else
           (let ((x (lscs (substring u 1) v))
                 (y (lscs u (substring v 1)))
                 )
             (+ 1 (min x y))
             ))
          )))

(lscs "arto" "atrio")
(lscs "arco" "ocra")
(lscs "archetipo" "")
(lscs "copia" "copia")