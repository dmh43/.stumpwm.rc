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
(def-non-emacs-key *top-map* (kbd "C-a") (stumpwm::send-meta-key (current-screen) (kbd "Home")))
(def-non-emacs-key *top-map* (kbd "C-e") (stumpwm::send-meta-key (current-screen) (kbd "End")))
(def-non-emacs-key *top-map* (kbd "s-a") (stumpwm::send-meta-key (current-screen) (kbd "C-a")))
(def-non-emacs-key *top-map* (kbd "C-m") (stumpwm::send-meta-key (current-screen) (kbd "RET")))
(def-non-emacs-key *top-map* (kbd "C-h") (stumpwm::send-meta-key (current-screen) (kbd "DEL")))
(def-non-emacs-key *top-map* (kbd "M-h") (stumpwm::send-meta-key (current-screen) (kbd "C-DEL")))

(def-non-emacs-key *top-map* (kbd "M-b") (stumpwm::send-meta-key (current-screen) (kbd "C-Left")))
(def-non-emacs-key *top-map* (kbd "M-f") (stumpwm::send-meta-key (current-screen) (kbd "C-Right")))

(def-non-emacs-key *top-map* (kbd "M-BackSpace") (kill-previous-word))
(def-non-emacs-key *top-map* (kbd "M-d") (kill-next-word))

(define-key *top-map* (kbd "s-s") "send-keys")

(defvar *copy-bindings*
  (let ((m (make-sparse-keymap)))
    (define-key m (kbd "u") "url-copy")
    (define-key m (kbd "q") "in-quotes-copy")
    (define-key m (kbd "s-c") "normal-copy")
    m))

(define-key *top-map* (kbd "s-c") *copy-bindings*)


(defvar *kill-bindings*
  (let ((m (make-sparse-keymap)))
    (define-key m (kbd "s") "kill-to-surrounds")
    (define-key m (kbd "f") "kill-to right")
    (define-key m (kbd "b") "kill-to left")
    m))

(define-key *top-map* (kbd "s-d") *kill-bindings*)

(defvar *zap-bindings*
  (let ((m (make-sparse-keymap)))
    (define-key m (kbd "z") "get-chars-to right")
    (define-key m (kbd "b") "get-chars-to left")
    m))

(define-key *root-map* (kbd "z") '*zap-bindings*)
