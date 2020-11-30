(use-package auto-fill-mode
  :hook (c++-mode org-mode)
  :init
  (setq-default fill-column 80)
  )
(provide 'init-auto-fill)
