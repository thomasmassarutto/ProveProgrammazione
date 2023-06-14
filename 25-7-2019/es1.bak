;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname es1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; lista delle sottosequenze comuni più lunghe delle stringhe u e v. 

(define lcs-list ; val : lista di stringhe
 (lambda (u v) (lcs-rec "" u v) )) ; u, v : stringhe

(define lcs-rec;; return: string
 (lambda (p u v); stringhe
   (cond; condizioni: 
     ((or (string=? u "") (string=? v ""));; se u o v sono vuote, ritorna listap: caso base
      (list p))
     ;;
     ((char=? (string-ref u 0) (string-ref v 0));; se il carattere in pos0 delle stringhe u, v è lo stesso
      (lcs-rec (string-append p (substring u 0 1));; aggiunge la lettera in comune a p
               (substring u 1)  ;;toglie la lettera in comune
               (substring v 1)));;a entrambe le stringhe
     ;;
     (else;; se le prime lettere sono differenti prova diverse strade per la ricorsione
      (best (lcs-rec p (substring u 1) v);; toglie una lettera a u
            (lcs-rec p u (substring v 1));; toglie una lettera a v
            ))
     )))

(define best;; return list
  (lambda (lstu lstv);; list(list)
    (cond;; controlla quale sia il migliore 
      ((> (string-length (car lstv)) (string-length (car lstu)))
         lstv)
       ((< (string-length (car lstv)) (string-length (car lstu)))
         lstu )
      (else;; altrimenti rigenerea la lista con stringa piu lunga
       (list (car lstu) (car lstv))
       )
     );; cond
   )
  )




(lcs-list "arto" "atrio") ;; deve ritornare ("ato" "aro")


