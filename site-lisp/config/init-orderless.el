;;; -*- lexical-binding: t -*-

;; Optionally use the `orderless' completion style.
(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-defaults nil)
  (completion-category-overrides '((file (styles partial-completion))))
  )

;; ------------
(provide 'init-orderless)