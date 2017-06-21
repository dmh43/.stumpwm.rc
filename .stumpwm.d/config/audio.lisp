;;; A command to create volume-control commands
(defun def-volcontrol (channel amount)
  "Commands for controling the volume"
  `(defcommand ,(intern (concat "amixer-" channel "-" (or amount "toggle"))) () ()
     (echo-string
      ,(current-screen)
      (concat ,channel " " (or ,amount "toggled") " "
              (run-shell-command
               (concat "amixer sset " ,channel " " (or ,amount "toggle") "| grep '^[ ]*Front'") t)))))

(defvar amixer-channels '("Master" "Headphone"))
(defvar amixer-options '("5%+" "5%-" "toggle"))

(let ((channels amixer-channels))
  (loop while channels do
       (let ((options amixer-options))
         (loop while options do
              (eval (def-volcontrol (car channels) (car options)))
              (setq options (cdr options))))
       (setq channels (cdr channels))))

(defcommand amixer-sense-toggle () ()
  (echo-string
   (current-screen)
   (concat "Headphone Jack Sense toggled"
           (run-shell-command "amixer sset 'Headphone Jack Sense' toggle" t))))

(define-keysym #x1008ff11 "XF86AudioLowerVolume")
(define-keysym #x1008ff12 "XF86AudioMute")
(define-keysym #x1008ff13 "XF86AudioRaiseVolume")

(define-key *top-map* (kbd "XF86AudioLowerVolume") "amixer-Master-5%-")
(define-key *top-map* (kbd "XF86AudioRaiseVolume") "amixer-Master-5%+")
(define-key *top-map* (kbd "XF86AudioMute")        "amixer-Master-toggle")

(define-key *top-map* (kbd "M-XF86AudioLowerVolume") "amixer-Headphone-5%-")
(define-key *top-map* (kbd "M-XF86AudioRaiseVolume") "amixer-Headphone-5%+")
(define-key *top-map* (kbd "M-XF86AudioMute")        "amixer-Headphone-toggle")

;; (define-key *top-map* (kbd "XF86AudioMicMute")        "amixer-sense-toggle")
