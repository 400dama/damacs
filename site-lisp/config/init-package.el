;;; -*- lexical-binding: t -*-
(require 'package)
(setq package-user-dir damacs-module-dir)
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu"   . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/")
			 ("melpa" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa/")
			 ("org"   . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/org/")))

;; ConfigurePackageManager
(unless (bound-and-true-p package--initialized)
  ;; To prevent initializing twice
  (setq package-enable-at-startup nil)
  (package-initialize))

(unless package-archive-contents
  (package-refresh-contents))

(require 'init-package-list)

;; --------------------
(provide 'init-package)
