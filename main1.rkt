#lang racket
(require "utility.rkt")
(require "runner.rkt")
(require "parcer.rkt")
(require "variable_env.rkt")

(define env '((global (a 1) (b 2) (c 5))))

(define sample-code '(block (assign i 0) (while (bool < i 10) (block (assign a (math + i 1)) (assign i a) (print i)))))
(define sample-code '(local-vars ((a 7) (b a) (x b)) (math + x a)))
(displayln (neo-parser sample-code))
(define parsed-neo-code (neo-parser sample-code))
(run-neo-parsed-code parsed-neo-code env)

