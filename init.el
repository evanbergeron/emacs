(require 'package)

(add-to-list 'package-archives
             '("MELPA Stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(package-initialize)

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-package)

(require 'init-basics)
(require 'init-evil)
(require 'init-ido)
(require 'init-smex)
(require 'init-windowing)
(require 'init-visual)
(require 'init-rtags)
(require 'init-cpp)
(require 'init-rust)
(require 'init-memsql)
(require 'init-magit)
(require 'init-flycheck)
(require 'init-minibuffer)

(setq inhibit-splash-screen t)
;; (switch-to-buffer "~/.emacs.splash")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("e8ebf4fb99b76dad3b7ec2313d5d091c1f3a3e0e4f9d55d3a58d73a8d3387358" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(package-archives
   (quote
    (("marmalade" . "http://marmalade-repo.org/packages/")
     ("marmalade" . "https://marmalade-repo.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/")
     ("MELPA Stable" . "https://stable.melpa.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (simplenote2 smex general ido-completing-read+ flycheck magit solarized-theme rainbow-mode magit-popup key-chord ido-grid-mode git-commit ghub evil-numbers evil-leader evil-commentary dracula-theme clang-format atom-one-dark-theme)))
 '(pdf-view-midnight-colors (quote ("#c5c8c6" . "#232c31"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
