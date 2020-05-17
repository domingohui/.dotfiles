(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
 '(package-selected-packages
   (quote
    (use-package flycheck company company-mode ccls lsp lsp-mode evil aggressive-indent color-theme-sanityinc-tomorrow))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Packages and use-package
(setq package-enable-at-startup nil)
(package-initialize)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  ;; (add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))

(setq make-backup-files nil)

(add-to-list 'load-path "~/.emacs.d/elisp/")
(require 'interactives)
(require 'init-lsp)
(require 'init-flycheck)
(require 'init-company)
(require 'init-emacs-ccls)
(require 'init-themes)
(require 'init-ui)
(require 'init-evil)
(require 'init-aggressive-indent)
