(use-package company
  :ensure t
  :custom
  (company-tooltip-idle-delay .3)
  (company-minimum-prefix-length 2)
  (company-idle-delay .1)
  (company-show-numbers t)
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  (add-hook 'haskell-mode-hook
	    (lambda ()
	      (set (make-local-variable 'company-backends)
		   (append '((company-capf company-dabbrev-code))
			   company-backends))))
  )

(provide 'init-company)
