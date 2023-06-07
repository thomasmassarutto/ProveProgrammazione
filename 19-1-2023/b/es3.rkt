;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; no due rosse vicine
(define R-B-tessellations ; val: lista di liste
  (lambda (n) ; n: intero non negativo
    (cond ((= n 0)
           '(()) )
          
          ((= n 1)
           '( (#\R) (#\B)) )
          
          (else
           (append
            (map (add-leftmost-tiles '(#\R #\B)); dopo un R ci deve andare un B
                 (R-B-tessellations (- n 2))
                 )
            (map (add-leftmost-tiles '(#\B) )
                 (R-B-tessellations (- n 1))
                 )
            ))
          )))


(define add-leftmost-tiles
  (lambda (tiles) ; tiles: lista di caratteri: puo essere (B) o (R, B)
   (lambda (tassellation)
     (cons tiles tassellation); aggiunge i tiles alla tassellazione gia presente
    )))

(R-B-tessellations 4)
;; parzialmente corretto credo: output (list (list xx) (list yy)) 