(require 'init-helpers)
(require-install-pkg 'aggressive-indent)

; Hooks
(add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)

(provide 'init-aggressive-indent)
