;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define cyclic-pattern
  (lambda (string nbr);; stringa; intero
    (if (< (string-length string) nbr)
           ""
         ;;else
        (helper string (substring string 0 nbr) nbr )
     )
   )
  )

(define helper
  (lambda (string periodo nbr)
    (cond
      ((string=? string periodo)
       periodo)
      
      ((string=?(substring string 0 nbr) periodo )
       (helper (substring string nbr) periodo nbr))
      ;;
      (else
       "")
     )
    )
  )

(cyclic-pattern "" 3)
(cyclic-pattern "abcabcabc" 2)