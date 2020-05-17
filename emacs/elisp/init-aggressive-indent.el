(use-package aggressive-indent
  :ensure t
  :init
  (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
  )

(provide 'init-aggressive-indent)
