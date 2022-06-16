;;; -*- lexical-binding: t -*-
;; Enable vertico
(use-package vertico
  :init
  (vertico-mode)
  )

(use-package savehist
  :init
  (savehist-mode))

;; ------------
(provide 'init-vertico)
