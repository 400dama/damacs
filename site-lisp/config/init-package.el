;;; -*- lexical-binding: t -*-
(require 'package)
(setq package-user-dir damacs-module-dir)

(setq package-archives '(("gnu"   . "http://elpa.zilongshanren.com/gnu/")
			 ("melpa" . "http://elpa.zilongshanren.com/melpa/")
			 ("org"   . "http://elpa.zilongshanren.com/org/")))

;; ConfigurePackageManager
(unless (bound-and-true-p package--initialized)
  (setq package-enable-at-startup nil)          ; To prevent initializing twice
  (package-initialize))


;; set use-package-verbose to t for interpreted .emacs,
;; and to nil for byte-compiled .emacs.elc.
(eval-and-compile
  (setq use-package-verbose (not (bound-and-true-p byte-compile-current-file))))
;; -ConfigurePackageManager

;; ConfigureUsePackage
;; Install use-package if not installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-and-compile
  (setq use-package-always-ensure t)
  (setq use-package-expand-minimally t)
  (setq use-package-compute-statistics t)
  (setq use-package-enable-imenu-support t))

(eval-when-compile
  (require 'use-package)
  (require 'bind-key))
;; -ConfigureUsePackage

;; AutoPackageUpdate
(use-package auto-package-update
  :if (not (daemonp))
  :custom
  (auto-package-update-interval 3) ;; in days
  (auto-package-update-prompt-before-update t)
  (auto-package-update-delete-old-versions t)
  (auto-package-update-hide-results t)
  :config
  (auto-package-update-maybe))
;; -AutoPackageUpdat

;; DimPac
(use-package diminish)
;; -DimPac

;; ;; Fix Failed to verify signature queue-0.2.el.sig
;; ;; https://emacs.stackexchange.com/questions/233/how-to-proceed-on-package-el-signature-check-failure
;; (setq package-check-signature nil)

;; Restart Emacs
(use-package restart-emacs
  :bind
  ("C-' r" . restart-emacs))


;; ------------
(provide 'init-package)
