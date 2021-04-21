;;; -*- lexical-binding: t -*-
(setq package-list '(
		     winum
		     ))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; -------------------------
(provide 'init-package-list)
