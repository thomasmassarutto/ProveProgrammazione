;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define clean-up
  (lambda (list)
    (cond ((null? (cdr list))
           list)
          
          ((isPresent (car list) (cdr list))
           (clean-up (cdr list)))

          (else
           (cons (car list) (clean-up (cdr list))))
      )
    )
  )

(define isPresent
  (lambda (string list)
  (cond ((null? list)#f)
        
        ((string=? string (car list)) #t)

        (else (isPresent string (cdr list)))
        
        )
    )
  )


(clean-up '("rosa" "garofano" "pervinca" "ciclamino"
 "genziana" "pervinca" "fiordaliso" "rosa"))

