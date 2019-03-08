(require 'ido)
(require 'ido-grid-mode)
(ido-mode t)
(ido-grid-mode t)
(ido-everywhere 1)

(defun bind-ido-keys ()
  "Keybindings for ido mode."
  (define-key ido-completion-map (kbd "<next>") 'keyboard-escape-quit))

(add-hook 'ido-setup-hook #'bind-ido-keys)

(provide 'init-ido)
