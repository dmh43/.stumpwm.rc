(defcommand battery () ()
            (run-shell-command "acpi -b | perl -ne 'print $1 if /Battery 0: (.+)/'" T))

(defcommand start-xephyr () () (run-shell-command ""))

(define-key *root-map* (kbd "b") "battery")
(define-key *root-map* (kbd "M-s") "google")

(def-non-emacs-command *top-map* (kbd "s-`") (get-shell-command "copyq toggle"))
