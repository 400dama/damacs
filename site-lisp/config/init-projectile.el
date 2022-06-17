;;; -*- lexical-binding: t -*-

;; ProjPac
(use-package projectile
  :bind
  ("C-c p" . projectile-command-map)
  :custom
  (projectile-completion-system 'default)
  (projectile-project-search-path '("~/7DOC/" "~/parzival/"))
  :config
  (projectile-mode)
  )

(use-package consult-projectile
  :load-path (lambda () (expand-file-name "consult-projectile" damacs-extension-dir))
  :after projectile)

;; (autoload 'projectile-project-root "projectile")
;; (setq consult-project-function (lambda (_) (projectile-project-root)))
;; -ProjPac

;; ------------
(provide 'init-projectile)
