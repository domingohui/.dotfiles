(use-package lsp-mode
  :ensure t
  :custom
  ;; if you want to change prefix for lsp-mode keybindings.
  (lsp-keymap-prefix "s-l")
  :init
  (add-hook 'c++-mode-hook #'lsp)
  )

(provide 'init-lsp)
