;;; -*- lexical-binding: t -*-
;; Install Pyright
;; https://github.com/microsoft/pyright
;; Install: sudo npm install -g pyright
;; Update: sudo npm update -g pyright
;; ln -s damacs/site-lisp/config/7DOC.pth anaconda3/envs/CCD27/lib/python2.7/site-packages

(require 'init-posframe)
(require 'init-markdown-mode)
(require 'init-yasnippet)

(use-package lsp-bridge
  ;; :straight (:host github :repo "manateelazycat/lsp-bridge" :files ("*" "acm/*"))
  :load-path (lambda () (expand-file-name "lsp-bridge" damacs-extension-dir))
  :config
  ;; (require 'lsp-bridge-orderless)
  ;; (require 'lsp-bridge-icon)

  ;; conda environment
  ;; (setq lsp-bridge-python-command "/home/parzival/anaconda3/envs/")

  (setq lsp-bridge-enable-log nil)
  (setq lsp-bridge-enable-signature-help t)
  (global-lsp-bridge-mode)
  (add-to-list 'lsp-bridge-org-babel-lang-list "emacs-lisp")
  (add-to-list 'lsp-bridge-org-babel-lang-list "sh")
  (add-to-list 'lsp-bridge-org-babel-lang-list "shell")
  (when (> (frame-pixel-width) 3000) (custom-set-faces '(corfu-default ((t (:height 1.3)))))))


;; ------------
(provide 'init-lsp-bridge)
