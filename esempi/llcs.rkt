;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname llcs) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; ritorna la lunghezza della massima sequenza in comune
(define llcs
  (lambda (str1 str2)
    (cond
      ( (or (string=? str1 "") (string=? str2 "")) 
       0)
      
      (
       (char=? (string-ref str1 0) (string-ref str2 0)) 
       (+ 1 (llcs (substring str1 1) (substring str2 1)))
       )

      (else
       ( max (llcs (substring str1 1) str2)
             (llcs str1 (substring str2 1))
       )
      )
    )
  ))

;; esempio della massima seq

(define lcs
  (lambda (str1 str2)
    (cond
      ( (or (string=? str1 "") (string=? str2 "")) 
       "")
      
      ((char=? (string-ref str1 0) (string-ref str2 0))
       (string-append (substring str1 0 1)
                      (lcs (substring str1 1) (substring str2 1) )))

      (else
       (longer (lcs (substring str1 1) str2)
               (lcs str1 (substring str2 1))
       )
      )
    )
  ))

(define longer
  (lambda (str1 str2)
          (let ((l1 (string-length str1))
                (l2 (string-length str2)))
            
            (cond
              ((< l1 l2)str2 )
              ((< l2 l1)str1 )
              
              ((= (random 2) 0)
               str2)
              (else
               str1)
              
                );;comn
           );;let
          );; lam
  );;def

(llcs "arto"  "atrio")
(lcs "arto"  "atrio")