(setq make-backup-files nil)
(display-time-mode 1)

;; Set $PATH. Emacs.App does not inherit env vars when started as standalone app.
;; https://github.com/purcell/exec-path-from-shell
(when (memq window-system '(mac ns x))
  (setenv "PATH"
	  (concat 
	   "/Users/domingohui/bin/:"
	   "/Users/domingohui/.nix-profile/bin/:"
	   (getenv "PATH")
	   )
	  )
  )

  (provide 'misc)
