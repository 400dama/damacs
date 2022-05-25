;;; -*- lexical-binding: t -*-
(use-package undo-tree
  :defer t
  :diminish undo-tree-mode
  :init (global-undo-tree-mode)
  :custom
  (undo-tree-visualizer-diff t)
  (undo-tree-history-directory-alist `(("." . ,(expand-file-name ".backup" damacs-tmp-dir))))
  (undo-tree-visualizer-timestamps t))

;; ------------
(provide 'init-undo-tree)
