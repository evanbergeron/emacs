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
(require 'init-windowing)
(require 'init-visual)
(require 'init-rtags)
(require 'init-cpp)
(require 'init-magit)

(setq inhibit-splash-screen t)
(switch-to-buffer "~/.emacs.splash")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives
   (quote
    (("marmalade" . "http://marmalade-repo.org/packages/")
     ("marmalade" . "https://marmalade-repo.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/")
     ("MELPA Stable" . "https://stable.melpa.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (magit solarized-theme rainbow-mode magit-popup key-chord ido-grid-mode git-commit ghub evil-numbers evil-leader evil-commentary dracula-theme clang-format atom-one-dark-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
