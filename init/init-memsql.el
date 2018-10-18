(defun source-to-memsql ()
  (interactive)
  (evil-window-split)
  (term))

(evil-leader/set-key
  "m" 'source-to-memsql)

(provide 'init-memsql)
