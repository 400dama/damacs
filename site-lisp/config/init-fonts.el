;;; -*- lexical-binding: t -*-
(require 'all-the-icons)
(unless (member "all-the-icons" (font-family-list))
    (all-the-icons-install-fonts t))

;; If you experience a slow down in performance when rendering multiple icons simultaneously
;; you can try setting the following variable
;; (setq inhibit-compacting-font-caches t)

;; -----------------
(provide 'init-fonts)
