(defun c-toggle-dot-pointer ()
  (interactive)
  (cond
   ((looking-at "\\.")   (replace-string "." "->" nil (point) (+ (point) 1)))
   ((looking-at "\\->")  (replace-string "->" "." nil (point) (+ (point) 2)))))

(provide 'init-cpp)

(evil-leader/set-key
  "o" 'c-toggle-dot-pointer
  "h" 'ff-find-other-file
  "l" 'clang-format-region)
