;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Data una lista s di interi positivi e diversi fra loro, la procedura lis-list restituisce la lista delle sottosequenze
;; crescenti più lunghe di s. Per esempio:
;; (lis-list '(27 7 18 49 8 15 53 1 28 6)) → ((7 8 15 28) (7 8 15 53) (7 18 49 53))

;;Completa il programma riportato nel riquadro sottostante, che si basa sull’idea sviluppata nell’esercizio di laboratorio
;;in relazione al problema in esame.

(define lis-list ; s: lista non vuota di interi positivi e diversi fra loro
 (lambda (s)
 (lis-rec s 0)
 ))

(define lis-rec
  (lambda (s t)
    (cond ((null? s)
           '() )
          
          ((< (car s) t)
           (lis-rec s (car s)))
          
          (else
           (better (lis-rec (cdr s) t)
                   (map (lambda (x)
                          (cons (car s) x))
                        (lis-rec (cdr s) (car s))))))))

(define better
  (lambda (u v)
    (cond ( (> (length u) (length v))   
           v)
          ( (< (length u) (length v))
           u)
          (else
           (cons u v)  ) 
          )
    )
  )
(lis-list '(27 7 18 49 8 15 53 1 28 6))