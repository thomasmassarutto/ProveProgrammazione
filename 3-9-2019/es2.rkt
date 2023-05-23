;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Considera il programma discusso a lezione per determinare la rappresentazione ternaria bilanciata (BTR) di un numero
;; intero n, riportato qui sotto per comodità:

(define btr-rep
  (lambda (n)
    (let ((r (remainder n 3))
          (q (quotient n 3))
                              )
      (cond ((= r -2)
             (string-append (btr-rep (- q 1)) (btd-rep +1)))
            ((= r +2)
             (string-append (btr-rep (+ q 1)) (btd-rep -1)))
            ((= q 0)
             (btd-rep r))
            (else
             (string-append (btr-rep q) (btd-rep r)))
            );; cond
      );;let
 ))

(define btd-rep
  (lambda (v)
    (cond ((= v -1) "-")
          ((= v 0) ".")
          ((= v +1) "+")
          )
 ))

;; Scrivi un programma in Scheme, basato sulla procedura btr-list per calcolare la lista dei “contributi” delle cifre
;; ternarie bilanciate alla composizione del valore n, ciascun contributo essendo pari al valore della cifra stessa
;; moltiplicato per il peso (cioè la potenza di tre) corrispondente. Per esempio:
;; (btr-list -25) → (-27 0 3 -1) [ dove (btr-rep -25) → "-.+-" ]
(define btr-list
 (lambda (int)
   (btr-list-helper (btr-rep int) );; da al suo helper la rappresentazione ternaria dell'intero
     )
 )

(define btr-list-helper;; lista di interi
  (lambda (string);; stringa: rappresentazione ternaria di un numero
    (cond ((string=? string "");; caso base
           null)
          ;; aggiunge ricorsivamente
          ((string=? (substring string 0 1) "+")
           (cons (* +1 (expt 3 (- (string-length string) 1)));; "segno 3nario" * (3^(posizione del carattere nella stringa) )
                 (btr-list-helper (substring string 1 ))) );; stringa restante
          ;; altri vari casi...
          ((string=? (substring string 0 1) "-")
           (cons (* -1 (expt 3 (- (string-length string) 1))) (btr-list-helper (substring string 1 ))) )

          ((string=? (substring string 0 1) ".")
           (cons (* 0 (expt 3 (- (string-length string) 1))) (btr-list-helper (substring string 1 ))) )
          
        )
      )
    )

(btr-list -25)
