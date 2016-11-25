#lang racket

;A simple program in Scheme language
;By Tam N. Nguyen
;NOV2016
;
;This program will take a list and return
;the maximum sum value of a sublist among
;all posssible sub-lists
;-------

(define (maxSum prompt)
(display prompt)
(read (open-input-string (format "(~a)" (read-line))))
  
)
(maxSum "Enter a list: ")

