#lang racket

;A simple program in Scheme language
;By Tam N. Nguyen
;NOV2016
;
;This program will take a list and return
;the maximum sum value of a sublist among
;all posssible CONSECUTIVE sub-lists
;-------

(define (deriveList lst)
  (let loop ((alst lst) (mainlst '()) (templist '()) )
    (cond
      ((empty? alst) mainlst)
      ((not (number? (car alst))) '())
      (else
       (loop (cdr alst) (append mainlst (list templist alst))  (append templist (list (car alst)) ) ))
    )
  )
)

(define (valueList lst )
  (let loop ((alst lst) (mainlst '()) )
    (cond
      ((empty? alst)  mainlst)
      (else
       (loop (cdr alst) (append mainlst (list (sumIt(car alst))))  ))
    )
  )
)

; this function sums all members of a list
(define (sumIt lst)
  (let loop ((alst lst) (accum 0))
    (cond
      ((empty? alst) accum)
      ((not (number? (car alst))) '())
      (else (loop (cdr alst) (+ accum (car alst))))
    )
  )
)


; this function find the largest number within a list
(define (findMaxNum lst)
  (foldl (lambda (e r) (if (or (not r) (> e r)) e r))
         #f
         lst))

;*********************
;MAIN PROGRAM
(define temp-list '())
(define (getList prompt)
  (display prompt)
  (read (open-input-string (format "(~a)" (read-line)))) ;reading items separated by space
)
( define original-list (getList "Enter a list: "))
(display "The original list is : ")
(display original-list)
(display "\n")
(display "The derived list is : ")
(deriveList original-list)
(display "\n")
(display "The max sum is : ")
(findMaxNum ( valueList (deriveList original-list)))
(display "\n")

(display "\n")



