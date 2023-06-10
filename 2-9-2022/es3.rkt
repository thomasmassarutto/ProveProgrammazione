;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define merge
  (lambda (u v)
    (cond ((null? u)
           v)
          
          ((null? v)
           u)
          
          ((isPresent (car u) v)
           (merge (cdr u) v))

          (else
           (merge (cdr u) (append (list(car u)) v)))
     )
   )
 )

(define isPresent
  (lambda (string lista)
    (cond ((null? lista) #f)
          
          ((string=? string (car lista))
           #t)
          
          (else
           (isPresent string (cdr lista)))
     )
    )
  )

(merge '("rosa" "garofano" "pervinca" "ciclamino") '("genziana" "pervinca" "fiordaliso" "rosa"))
