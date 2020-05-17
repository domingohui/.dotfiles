(use-package company
  :ensure t
  :custom
  (company-tooltip-idle-delay .3)
  (company-minimum-prefix-length 2)
  (company-idle-delay .3)
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  )

(provide 'init-company)
