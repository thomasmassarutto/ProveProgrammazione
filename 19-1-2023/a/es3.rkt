;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; conoscere tutte le possibili tassellazioni di un cordolo di lunghezza n ≥ 0
; Argomenti e valori procedural
(define 2-3-tessellations ; val: lista di liste
  (lambda (n) ; n: intero non negativo
    (cond ((= n 0)
           (list '()) )
          
          ((= n 1)
           (list '()) )
          
          ((= n 2)
           (list (list 2)))
          
          (else
           (append
            (map (add-leftmost-tile 2 )
                 (2-3-tessellations (- n 2)) )
            (map (add-leftmost-tile 3 )
                 (2-3-tessellations (- n 3)) )
            ))
 )))

(define add-leftmost-tile
 (lambda (tile) ; tile: intero (2 o 3)
   (lambda (tessellation)
     (cons tile tessellation)
     )
 ))

 (2-3-tessellations 11) 
