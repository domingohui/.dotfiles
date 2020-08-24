(use-package haskell-mode
  :ensure t
  :init (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
  :config
  (setq flycheck-haskell-ghc-executable "~/.nix-profile/bin/ghc")
  (setq flycheck-haskell-hlint-executable "~/.nix-profile/bin/hlint")
  )

(provide 'init-haskell)
