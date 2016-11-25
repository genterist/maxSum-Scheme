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

(display "The original list is : ")
(display original-list)


