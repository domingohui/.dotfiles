(use-package racket-mode
  :ensure t
  :init
  (add-hook 'racket-mode-hook #'racket-xp-mode)
  (add-hook 'racket-mode-hook
	    (lambda ()
	      (define-key racket-mode-map (kbd "C-c .") 'racket-xp-visit-definition)))
  )

(provide 'init-racket)
