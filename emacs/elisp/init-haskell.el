(use-package haskell-mode
  :ensure t
  :config
  (setq flycheck-haskell-ghc-executable "~/.nix-profile/bin/ghc")
  (setq flycheck-haskell-hlint-executable "~/.nix-profile/bin/hlint")
  )

(provide 'init-haskell)
