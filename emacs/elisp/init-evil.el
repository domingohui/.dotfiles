(require 'init-helpers)

(require-install-pkg 'evil)
(evil-mode 1)
(define-key evil-insert-state-map "jk" 'evil-normal-state)

(provide 'init-evil)
