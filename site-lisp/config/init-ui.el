;;; -*- lexical-binding: t -*-
(require 'init-winum)
(require 'init-fonts)
(require 'init-doom-themes)
(require 'init-doom-modeline)
(require 'init-nyan)

(global-hl-line-mode 1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-format "%H:%M")
(setq display-time-default-load-average nil)

;; ---------------
(provide 'init-ui)
