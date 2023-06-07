;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define R-B-tessellations ; val: lista di liste
  (lambda (n) ; n: intero non negativo
    (cond ((= n 0)
           null)
          
          ((= n 1)
           '((#\R) (#\B)))
          
          (else
           (append 
            (map (add-leftmost-tiles )
                 (R-B-tessellations (- n 2))
                 )
            (map (add-leftmost-tiles  )
                 (R-B-tessellations (- n 1))
                 )
            )
           );; else
          )))

(define add-leftmost-tiles
  (lambda (tiles) ; tiles: lista di caratteri
    (cond
      ((char=? (car tiles) #\R)
       (cons #\B tiles))
      
      (else
       (append (cons #\R tiles)
               (cons  #\B tiles)
               )
       )
      )
 ))
  
(R-B-tessellations 3)