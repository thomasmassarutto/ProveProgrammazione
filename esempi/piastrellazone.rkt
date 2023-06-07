;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname piastrellazone) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define 1-2-tessellation
  (lambda (n)
    (cond ((= n 1)1)
          ((= n 2) 2)
          
          (else
           (+ (1-2-tessellation (- n 1))
              (1-2-tessellation (- n 2))
              )
           )
          )
    )
  )

(1-2-tessellation 12)

(define R-B-tessellation
  (lambda (n)
    (cond
      ((= n 1) 2)
      ((= n 2) 3)
      (else
       (+ (R-B-tessellation (- n 1))
          (R-B-tessellation (- n 2))
          )       
       )
      )
    )
  )

(R-B-tessellation 12)