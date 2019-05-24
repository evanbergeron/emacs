;; Fuck tabs
(setq-default indent-tabs-mode nil)
(define-coding-system-alias 'UTF-8 'utf-8)

(setq initial-scratch-message "歡迎來到Emacs")
(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-basics)
