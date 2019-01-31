(defun c-toggle-dot-pointer ()
  (interactive)
  (cond
   ((looking-at "\\.")   (replace-string "." "->" nil (point) (+ (point) 1)))
   ((looking-at "\\->")  (replace-string "->" "." nil (point) (+ (point) 2)))))


(evil-leader/set-key
  "o" 'c-toggle-dot-pointer
  "h" 'ff-find-other-file
  "l" 'clang-format-region)

(setq-default c-basic-offset 4)
(setq c-default-style "linux")

(add-to-list 'auto-mode-alist '("\\.mpl\\'" . c++-mode))

(add-hook 'c-mode-common-hook '(lambda () (c-toggle-auto-state 1)))

(define-key c++-mode-map [C-down-mouse-1] 'rtags-find-symbol-at-point)

(add-to-list 'auto-mode-alist '("\\.yxx\\'" . c++-mode))

(provide 'init-cpp)
