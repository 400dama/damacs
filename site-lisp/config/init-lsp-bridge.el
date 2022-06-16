;;; -*- lexical-binding: t -*-
;; Install Pyright
;; https://github.com/microsoft/pyright
;; Install: sudo npm install -g pyright
;; Update: sudo npm update -g pyright

(require 'init-posframe)
(require 'init-markdown-mode)
(require 'init-yasnippet)

(use-package lsp-bridge
  ;; :straight (:host github :repo "manateelazycat/lsp-bridge" :files ("*" "acm/*"))
  :load-path (lambda () (expand-file-name "lsp-bridge" damacs-extension-dir))
  :config
  (setq lsp-bridge-enable-log nil)
  (setq lsp-bridge-enable-signature-help t)
  (global-lsp-bridge-mode)
  (add-to-list 'lsp-bridge-org-babel-lang-list "emacs-lisp")
  (add-to-list 'lsp-bridge-org-babel-lang-list "sh")
  (add-to-list 'lsp-bridge-org-babel-lang-list "shell")
  (when (> (frame-pixel-width) 3000) (custom-set-faces '(corfu-default ((t (:height 1.3)))))))


;; ------------
(provide 'init-lsp-bridge)
