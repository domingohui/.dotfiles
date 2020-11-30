(setq make-backup-files nil)
(display-time-mode 1)

;; Set $PATH. Emacs.App does not inherit env vars when started as standalone app.
;; https://github.com/purcell/exec-path-from-shell
(when (memq window-system '(mac ns x))
  (let (
	(new-exec-path (cons "~/.nix-profile/bin/" exec-path))
	)

    (setq exec-path new-exec-path)
    (setenv "PATH" (mapconcat 'identity new-exec-path ":"))
    )
  )


(provide 'misc)
