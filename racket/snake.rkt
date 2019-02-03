#lang racket

(define snake%
  (class object%
    (super-new)
    (init-field dir head tail)

    (define/public (slither)
      (set! tail (cons head (all-but-last tail)))
      (set! head (next-head)))

    (define/public (grow)
      (set! tail (cons head (all-but-last tail))
      (set! head (next-head)))

    (define/public (can-eat goos)
      (findf (lambda (goo) (close? goo head)) goos))

    (define/private (next-head)
      (cond
        [(string=? dir "up")   (posn-move head 0 -1)]
        [(string=? dir "down")   (posn-move head 0 +1)]
        [(string=? dir "left")   (posn-move head -1 0)]
        [(string=? dir "right")   (posn-move head +1 0)]))))
