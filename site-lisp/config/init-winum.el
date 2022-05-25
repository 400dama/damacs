;;; -*- lexical-binding: t -*-
(use-package winum
  :bind
  ("M-`". #'winum-select-window-by-number)
  ("M-1". #'winum-select-window-1)
  ("M-2". #'winum-select-window-2)
  ("M-3". #'winum-select-window-3)
  ("M-4". #'winum-select-window-4)
  ("M-5". #'winum-select-window-5)
  ("M-6". #'winum-select-window-6)
  ("M-7". #'winum-select-window-7)
  ("M-8". #'winum-select-window-8)
  :config
  (setq winum-auto-assign-0-to-minibuffer t)
  (winum-mode))
;; ------------
(provide 'init-winum)
