;;; -*- lexical-binding: t -*-
(require 'which-key)

(setq which-key-popup-type 'minibuffer)
(setq which-key-show-early-on-C-h t)
(setq which-key-idle-delay 1000)
(setq which-key-idle-secondary-delay 0.05)
(which-key-mode)

;; ---------------------
(provide 'init-which-key)
