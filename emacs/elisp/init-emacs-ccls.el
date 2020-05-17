(use-package ccls
  :ensure t
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
	 (lambda () (require 'ccls) (lsp)))
  :custom
  (ccls-executable "~/.nix-profile/bin/ccls")
  )

(provide 'init-emacs-ccls)
;;; init-emacs-ccls.el ends here
