(use-package evil
  :ensure t
  :init
  (evil-mode 1)
  ;; (define-key evil-insert-state-map "jk" 'evil-normal-state)
  :after (key-chord)
  :config
  (key-chord-define evil-insert-state-map  "jk" 'evil-normal-state)
  )

(provide 'init-evil)
