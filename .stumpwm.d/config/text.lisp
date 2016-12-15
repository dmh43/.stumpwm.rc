(def-non-emacs-key *top-map* (kbd "M->") (stumpwm::send-meta-key (current-screen) (kbd "End")))
(def-non-emacs-key *top-map* (kbd "M-<") (stumpwm::send-meta-key (current-screen) (kbd "Home")))
(def-non-emacs-key *top-map* (kbd "M-v") (stumpwm::send-meta-key (current-screen) (kbd "SunPageUp")))
(def-non-emacs-key *top-map* (kbd "C-v") (stumpwm::send-meta-key (current-screen) (kbd "SunPageDown")))
(def-non-emacs-key *top-map* (kbd "s-v") (stumpwm::send-meta-key (current-screen) (kbd "C-v")))
(def-non-emacs-key *top-map* (kbd "C-b") (stumpwm::send-meta-key (current-screen) (kbd "Left")))
(def-non-emacs-key *top-map* (kbd "C-f") (stumpwm::send-meta-key (current-screen) (kbd "Right")))
(def-non-emacs-key *top-map* (kbd "s-f") (stumpwm::send-meta-key (current-screen) (kbd "C-f")))
(def-non-emacs-key *top-map* (kbd "C-p") (stumpwm::send-meta-key (current-screen) (kbd "Up")))
(def-non-emacs-key *top-map* (kbd "C-n") (stumpwm::send-meta-key (current-screen) (kbd "Down")))
(def-non-emacs-key *top-map* (kbd "s-n") (stumpwm::send-meta-key (current-screen) (kbd "C-n")))
(def-non-emacs-key *top-map* (kbd "C-d") (stumpwm::send-meta-key (current-screen) (kbd "Delete")))

(def-non-emacs-key *top-map* (kbd "M-b") (stumpwm::send-meta-key (current-screen) (kbd "C-Left")))
(def-non-emacs-key *top-map* (kbd "M-f") (stumpwm::send-meta-key (current-screen) (kbd "C-Right")))

(def-non-emacs-key *top-map* (kbd "M-DEL") (kill-previous-word))
(def-non-emacs-key *top-map* (kbd "M-DEL") (kill-next-word))

(defvar *copy-bindings*
  (let ((m (make-sparse-keymap)))
    (define-key m (kbd "u") "url-copy")
    (define-key m (kbd "q") "in-quotes-copy")
    (define-key m (kbd "C-M-c") "normal-copy")
    m))

(define-key *top-map* (kbd "C-M-c") *copy-bindings*)
