(add-to-list 'load-path (concat (getenv "PATH_TO_MEMSQL") "/utils/private/emacs/rtags"))
;; (add-to-list 'load-path "/home/evan/memsql/utils/private/emacs/rtags")
(require 'rtags)

(evil-leader/set-key
  "d" 'rtags-find-symbol-at-point
  "g" 'rtags-find-symbol
  "r" 'rtags-find-references-at-point)

(provide 'init-rtags)
