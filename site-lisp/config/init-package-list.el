;;; -*- lexical-binding: t -*-
(setq package-list '(
		     ;; winum
		     shrink-path
		     ht
		     pfuture
		     ))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; -------------------------
(provide 'init-package-list)
