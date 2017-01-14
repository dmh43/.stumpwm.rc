(dotimes (i 13)
  (unless (eq i 0) ; F0 is non-existant and will error.
    (define-key *top-map* (kbd (format nil "M-F~a" i)) (format nil "gselect ~a" i))))

(define-key *top-map* (kbd "M-]") "gnext")
(define-key *top-map* (kbd "M-[") "gprev")
(setq *mouse-focus-policy* :click)
