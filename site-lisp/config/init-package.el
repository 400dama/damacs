;;; -*- lexical-binding: t -*-
(require 'package)
(setq package-user-dir damacs-module-dir)
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu"   . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/")
			 ("melpa" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa/")
			 ("org"   . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/org/")))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

;; --------------------
(provide 'init-package)
