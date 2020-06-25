;; Emacs UI

;; Welcome message
(setq inhibit-startup-message t)
(tool-bar-mode -1)

;; Line number
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))
(setq display-line-numbers-type 'relative)

;; Font size
(add-to-list 'default-frame-alist '(font . "Monaco-15"))

;; Show cursor position within line
(column-number-mode 1)

;; Highlight current line
(global-hl-line-mode 1)

;; highlight brackets
(show-paren-mode 1)
(setq-default show-paren-style 'mixed)

;; Line spacing
(setq-default line-spacing 0.08)

;; Cursor
(blink-cursor-mode 0)

(provide 'init-ui)
;;; init-ui.el ends here
