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
(require 'init-gdb)
(require 'init-snippets)

(setq inhibit-splash-screen t)
;; (switch-to-buffer "~/.emacs.splash")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("f672612d0df1878eaabc955f71abec77512997ce94e1ef8aac4a2214a1b8e3cd" "db0c78acdb31dc5e7a85cc15ec53dff67b631044fe7ac90d63ab9cf7faab3550" "47c3ef177d8cc49ed52ae335afa92750dd1190a2e5cf90125bf795d44d228c3e" "188a832e6073923d48e7a4c3c733ec14ebb7a17721b31ae5c94fc4f921104a53" "36df830fbb6b674cbbf3965ff6906c959d439cef12b3e2ccc275d789796bd125" "8f29a00699eb5b13f8621f8e40279761e55105583f2e08271bb17f82b6326d65" "af8c1385a90bef9ff86455b4bb748291303a3e36e5ee80bf485dfcec3a4e2a3f" "3f342199a707b3be946488a2cb65339bcd2d7e3365af32a3c2179142af85be27" "8f5ddb4be92a895f7fa53e15c7c840a34f8005297946468df27edbf546f543b3" "0ffd75d639ff68071b83ef6c17f7fc135e5823dc3fe57a14f70ec758fea2997b" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "e8ebf4fb99b76dad3b7ec2313d5d091c1f3a3e0e4f9d55d3a58d73a8d3387358" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
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
