(use-package company-ghci
  :ensure t
  :config (push 'company-ghci company-backends)
  :hook (haskell-mode haskell-interactive-mode)
  )

(provide 'init-company-ghci)
