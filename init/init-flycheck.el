(require 'flycheck)

(evil-leader/set-key
  "p" 'flycheck-display-error-at-point)

(provide 'init-flycheck)
