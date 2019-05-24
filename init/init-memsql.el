;; (defun source-to-memsql ()
;;   (interactive)
;;   (evil-window-split)
;;   (term))

(add-to-list 'auto-mode-alist '("\\.expected\\'" . sql-mode))

;; `-ex run` tells gdb to run the server (saves having to manually press `r`)
(defun start-singlebox ()
  (interactive)
  (insert " -ex run --args /home/evan/memsql/debug/memsqld --skynet=false")
)

(defun start-distributed ()
  (interactive)
  (insert " -ex run --args /home/evan/memsql/debug/memsqld --default-partitions-per-leaf=3 --transaction-buffer=1m")
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
  "m" 'memsql-singlebox)

(provide 'init-memsql)
