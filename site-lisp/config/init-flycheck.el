;;; -*- lexical-binding: t -*-
;; FlyCheckPac
(use-package flycheck
  :defer t
  :diminish
  :hook ((prog-mode markdown-mode LaTeX-mode) . flycheck-mode)
  :custom
  (flycheck-global-modes
   '(not text-mode outline-mode fundamental-mode org-mode
         diff-mode shell-mode eshell-mode term-mode))
  (flycheck-emacs-lisp-load-path 'inherit)
  (flycheck-indication-mode 'right-fringe)
  :init
  (if *sys/gui*
      (use-package flycheck-posframe
        :custom-face (flycheck-posframe-border-face ((t (:inherit default))))
        :hook (flycheck-mode . flycheck-posframe-mode)
        :custom
        (flycheck-posframe-border-width 1)
        (flycheck-posframe-inhibit-functions
         '((lambda (&rest _) (bound-and-true-p company-backend)))))
    (use-package flycheck-pos-tip
      :defines flycheck-pos-tip-timeout
      :hook (flycheck-mode . flycheck-pos-tip-mode)
      :custom (flycheck-pos-tip-timeout 30)))
  :config
  (when (fboundp 'define-fringe-bitmap)
    (define-fringe-bitmap 'flycheck-fringe-bitmap-double-arrow
      [16 48 112 240 112 48 16] nil nil 'center))
  (setq flycheck-check-syntax-automatically '(save))

  )
;; -FlyCheckPac
;; (use-package flycheck
;;   :diminish flycheck-mode
;;   :hook (after-init . global-flycheck-mode)
;;   ;; :init
;;   ;; (use-package flycheck-golangci-lint
;;   ;;   :hook (go-mode . flycheck-golangci-lint-setup))
;;   :config
;;   (setq flycheck-indication-mode 'right-fringe)
;;   (setq flycheck-emacs-lisp-load-path 'inherit)
;;   (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))

;;   ;; Only check while saving and opening files
;;   (setq flycheck-check-syntax-automatically '(save mode-enabled))
;;   ;; Display Flycheck errors in GUI tooltips
;;   (use-package flycheck-posframe
;;     :hook (flycheck-mode . flycheck-posframe-mode)
;;     :config
;;     (flycheck-posframe-configure-pretty-defaults))

;;   (use-package flycheck-popup-tip
;;     :hook (flycheck-mode . flycheck-popup-tip-mode)))

;; ------------
(provide 'init-flycheck)
