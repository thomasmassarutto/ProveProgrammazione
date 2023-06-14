;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; a soprasequenza comune più corta di due sequenze di caratteri u e v
; ricorsione ad albero
v rappresentate da stringhe
(define scs ; val: stringa
  (lambda (u v) ; u, v: stringhe
    (cond ((string=? u "")
           v)
          ;;
          ((string=? v "")
           u)
          ;;
          ((char=? (string-ref u 0) (string-ref v 0))
           (string-append (substring u 0 1)
                          (scs (substring u 1) (substring v 1)) )
           )
          ;;
          (else ;; seleziona superstringa più corta
           (let ((x (scs (substring u 1) v));; calcolo scs su sottoproblemi
                 (y (scs u (substring v 1)));;
                 )
             (if (< (string-length x) (string-length y))
                 ;; x < y
                  (string-append (substring u 0 1)
                                 x) ;;
                 ;; else x >= y
                 (string-append (substring v 0 1)
                                y);;
 
 )))
 )))
(scs "ab" "c")
(scs "arto" "atrio")
(scs "arco" "ocra")
(scs "archetipo" "")
(scs "copia" "copia") 