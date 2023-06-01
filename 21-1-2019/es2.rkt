;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define xlcs ; val: stringa
  (lambda (s t) ; s, t: stringhe
    (cond ((string=? s "")
           t)
          
          ((string=? t "")
           (string-append "/" (xlcs (substring s 1) t)))
          
          ((char=? (string-ref s 0) (string-ref t 0))
           (string-append "*" (xlcs (substring s 1) (substring t 1))))
          
          (else
           (better (string-append (xlcs (substring s 1) t) (substring s 0 1) )
                   (string-append (xlcs s (substring t 1)) (substring t 0 1))
                   ))
          )))
    
(define better
  (lambda (u v)
    (if (< (stars u) (stars v))
        v
        ;; else
        u
 
 )))

(define stars
  (lambda (q)
    (if (string=? q "")
        0
        (let ((n (stars (substring q 1))))
          (if (char=? (string-ref q 0) #\*  )
              (+ n 1)
              n)
 ))))

(xlcs "ar" "at")