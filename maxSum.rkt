#lang racket

;A simple program in Scheme language
;By Tam N. Nguyen
;NOV2016
;
;This program will take a list and return
;the maximum sum value of a sublist among
;all posssible sub-lists
;-------

(define (getList prompt)
  (display prompt)
  (read (open-input-string (format "(~a)" (read-line)))) ;reading items separated by space
)
( define original-list (getList "Enter a list: "))


; this function sums all members of a list
(define (sumIt lst)
  (let loop ((lst lst) (accum 0))
    (cond
      ((empty? lst) accum)
      ((not (number? (car lst))) '())
      (else (loop (cdr lst) (+ accum (car lst))))
    )
  )
)


; this function find the largest number within a list
(define (findMaxNum lst)
  (foldl (lambda (e r) (if (or (not r) (> e r)) e r))
         #f
         lst))

(display "The original list is : ")
(display original-list)
(display "\n")


;this function finds the maximum sublist within a list
;and return the sum of all of its members
( define posList (filter positive? original-list))
(cond
  ((> (length posList) 0) ;if we can find a sub list of all possitive numbers
      (display "The maximum list is : ")
      (display posList)
      (display "\nThe maximum sum is : ")
      (display (sumIt posList))
  )
  (else ; if not, return the max single negative number
      (display "The maximum list is the largest negative number : ")
      (display (findMaxNum original-list))
  )
)
(display "\n")



