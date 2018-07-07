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

(setq inhibit-splash-screen t)
;; (switch-to-buffer "**")
(switch-to-buffer "~/.emacs.splash")
