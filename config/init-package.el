;;; init-package.el --- Package initialization -*- lexical-binding: t -*-
;; Initialize package sources
(require 'package)

;; Set up package directories
(setq package-user-dir
      (expand-file-name "elpa/" user-emacs-directory))

;; Set up package repositories (SJTU mirrors)
(setq package-archives
      '(("gnu" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/")
        ("melpa" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa/")
        ("org" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/org/")
        ("nongnu" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/nongnu/")))

;; Initialize package system
(package-initialize)

;; Install use-package if not installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; Configure use-package
(setq use-package-always-ensure t
      use-package-always-defer t
      use-package-expand-minimally t
      use-package-enable-imenu-support t)

;; Use diminish to remove package documentation
(use-package diminish :ensure t)

(provide 'init-package)
