(defun require-install-pkg (pkg-name)
  "install package if not installed. Also require the package."
  (unless (package-installed-p pkg-name)
    (package-install pkg-name))
  (require pkg-name)
  )

(provide 'init-helpers)
