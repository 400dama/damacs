;;; -*- lexical-binding: t -*-
(require 'treemacs)
(require 'treemacs-projectile)

(with-eval-after-load 'winum
  (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))

(treemacs-resize-icons 22)
(treemacs-follow-mode t)
(treemacs-filewatch-mode t)
(treemacs-fringe-indicator-mode 'always)

(setq treemacs-show-hidden-files t
      treemacs-missing-project-action 'ask
      treemacs-follow-after-init t
      treemacs-no-delete-other-windows t
      treemacs-show-cursor nil
      )


;; ---------------------
(provide 'init-treemacs)
