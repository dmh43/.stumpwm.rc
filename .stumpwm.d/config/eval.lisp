(defvar *eval-bindings*
  (let ((m (stumpwm:make-sparse-keymap)))
    (def-non-emacs-key m (kbd "C-r") (eval-line (get-x-selection))) ; TODO: have this use the command defined earlier
    m))

(stumpwm:define-key stumpwm:*root-map* (stumpwm:kbd "C-c") '*eval-bindings*)
