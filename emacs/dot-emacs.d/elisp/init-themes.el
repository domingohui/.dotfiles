;; Load theme packages
(use-package color-theme-sanityinc-tomorrow
  ;; https://github.com/purcell/color-theme-sanityinc-tomorrow
  :ensure t
  )


;; Define themes to use
;; Themes should be trusted; no confirm prompt will be shown.
(defvar enabled-themes
  (list 'sanityinc-tomorrow-day
	'sanityinc-tomorrow-night
	'spacemacs-light
	)
  )

;; Functions to change between themes
(defun choose-theme (chosen-theme)
  "Prompt for a theme selection (CHOSEN-THEME) and load it."
  (interactive
   (let* ((choices-alist (zip (string-to-list "abcdefghijklmnopqrstuvwxyz") enabled-themes))
	  (prettify-choice (lambda (x) (format "%c: %s" (car x) (cdr x))))
	  (prompt-msg (mapconcat prettify-choice choices-alist "\n"))
	  (choice-char (read-char-choice prompt-msg (mapcar 'car choices-alist))))
     (cdr (assoc choice-char choices-alist))
     ))
  ;; Disable all custom themes (i.e. load default Emacs theme)
  ;; This resets anything changed by the current theme.
  (custom-set-variables '(custom-enabled-themes nil))
  (load-theme chosen-theme t)
  )

(provide 'init-themes)
