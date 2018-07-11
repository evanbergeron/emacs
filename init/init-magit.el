(require 'magit)

(evil-leader/set-key
  "w" 'magit-blame
  "q" 'magit-blame-quit)

(provide 'init-magit)
