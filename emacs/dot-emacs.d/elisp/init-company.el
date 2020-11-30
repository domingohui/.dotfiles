(use-package company
  :ensure t
  :custom
  (company-tooltip-idle-delay .3)
  (company-minimum-prefix-length 2)
  (company-idle-delay .1)
  (company-show-numbers t)
  :hook (after-init . global-company-mode)
  )

(provide 'init-company)
