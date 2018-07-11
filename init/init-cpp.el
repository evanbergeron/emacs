(defun c-toggle-dot-pointer ()
  (interactive)
  (cond
   ((looking-at "\\.")   (replace-string "." "->" nil (point) (+ (point) 1)))
   ((looking-at "\\->")  (replace-string "->" "." nil (point) (+ (point) 2)))))

(provide 'init-cpp)

(evil-leader/set-key
  "o" 'c-toggle-dot-pointer
  "l" 'clang-format-region)
