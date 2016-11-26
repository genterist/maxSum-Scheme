#lang racket

;A simple program in Scheme language
;By Tam N. Nguyen
;NOV2016
;
;This program will take a list and return
;the maximum sum value of a sublist among
;all posssible CONSECUTIVE sub-lists
;-------

(define (getList prompt)
  (display prompt)
  (read (open-input-string (format "(~a)" (read-line)))) ;reading items separated by space
)
( define original-list (getList "Enter a list: "))


; this function finds the maximum sum of any possible consecutive sub list
(define (maxSum lst)
  (let loop ((lst lst) (accum 0))
    (cond
      ((empty? lst) accum)
      ((not (number? (car lst))) '())
      (else (loop (cdr lst) (+ accum (car lst))))
    )
  )
)





