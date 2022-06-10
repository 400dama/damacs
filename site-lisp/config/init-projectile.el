;;; -*- lexical-binding: t -*-

;; ProjPac
(use-package projectile
  :bind
  ("C-c p" . projectile-command-map)
  :custom
  (projectile-completion-system 'ivy)
  (projectile-project-search-path '("~/7DOC/" "~/parzival/"))
  :config
  (projectile-mode 1)
  )
;; -ProjPac

;; ------------
(provide 'init-projectile)
