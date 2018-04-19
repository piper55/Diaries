(define deriv
  (lambda (f) 
  	(lambda (x) 
  		(/ (- (f (+ x dx)) (f x)) 
  			dx))))
(define (make-sum a1 a2)
  (list '+ a1 a2))
(define a2 cadr)
(define a1 caddr)
(make-sum 3 5)