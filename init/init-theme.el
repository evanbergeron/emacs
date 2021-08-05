(setq themes '(hybrid solarized-light))
(setq themes-index 0)

(defun next-theme ()
  (interactive)
  (setq themes-index (% (1+ themes-index) (length themes)))
  (load-theme (nth themes-index themes)))

(provide 'init-theme)
