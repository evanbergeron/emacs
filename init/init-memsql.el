(add-to-list 'auto-mode-alist '("\\.expected\\'" . sql-mode))

;; `-ex run` tells gdb to run the server (saves having to manually press `r`)
(defun start-singlebox ()
  (interactive)
  (insert " -ex run --args /home/evan/memsql/debug/memsqld --skynetv6_singlebox")
)

(defun start-distributed ()
  (interactive)
  (insert " -ex run --args /home/evan/memsql/debug/memsqld")
)

(defun memsql-singlebox ()
  (interactive)
  (minibuffer-with-setup-hook 'start-singlebox (call-interactively #'gud-gdb))
)

(defun memsql-distributed ()
  (interactive)
  (minibuffer-with-setup-hook 'start-distributed (call-interactively #'gud-gdb))
)

(evil-leader/set-key
  "u" 'gud-gdb
  "m" 'memsql-singlebox)

(provide 'init-memsql)
