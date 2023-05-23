;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname es2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define paths ; val : stringa
  (lambda (u v) ; u, v : stringa
    (cond ((string=? u "");;
           (list v))
          
          ((string=? v "")
           (list u) )
          
          ;;else
          (else;; genera la lista di stringhe del risulatato
           (append
            (map string-append
             (paths (substring u 1) v) )
            
            (map  string-append
             (paths (substring v 1) u ) ) 
             );; append
            );;else
       );; cond
    )
  )
;; La procedura paths restituisce la lista dei percorsi di Manhattan relativi a una mappa in cui gli spostamenti in basso
;; sono rappresentati da caratteri consecutivi della stringa u e gli spostamenti a destra da caratteri di v. Per esempio:
;;(paths "12" "ab") → ("12ab" "1a2b" "1ab2" "a12b" "a1b2" "ab12")
(paths "12" "ab")