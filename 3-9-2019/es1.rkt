;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname es1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; (lis '(27 90 7 29 49 8 53 1 28 6)) → ((7 29 49 53) (27 29 49 53))
;; Data una lista di interi s, la procedura lis calcola
;; la lista delle sottosequenze crescenti più lunghe di s. 

(define lis ; val : lista di liste (di interi)
 (lambda (s)
   (lis-rec s 0 null);; s: lista corrente, 0: intero che verra usato per confrontare, null: lista vuota
   )) ; s : lista di interi

; lis-rec deve quindi contenere liste di interi, tutte della stessa lunghezza
(define lis-rec
  (lambda (s t p) ;; s: lista corrente, t: intero che verra usato per confrontare,p: lista parziale,gli elementi vengono aggiunti piano piano
    (cond ((null? s)
     (list (reverse p)))
  ;;  
    ((<= (car s) t);; se il primo elemento di s è <= del controllo t, caso "normale" si continua la ricorsione
     (lis-rec (cdr s) t p));;
  ;;
    (else (best (lis-rec (cdr s) t p);; coda di s, t, p
                (lis-rec (cdr s) (car s) (cons (car s) p))); coda di s, primo int di s, primo di s + p
          )
 )))

;; La lista restituita da lis-rec deve quindi contenere liste di interi, tutte della stessa lunghezza.
;; Data una lista con queste caratteristiche, il compito della procedura best è
;; quindi di mettere insieme tutte e sole le liste che fanno parte della soluzione per gli argomenti s, t, p.

(define best;; lista di liste
  (lambda (ls1 ls2)
    (cond
      ((> (length (car ls1)) (length (car ls2)))
      ls1)
      
      ((< (length (car ls1)) (length (car ls2)))
      ls2)
      
      (else
       (cons ls1 ls2))
      )
    )
  )

(lis '(27 90 7 29 49 8 53 1 28 6))

;; credo sia giusta (?)