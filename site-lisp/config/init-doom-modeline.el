;;; -*- lexical-binding: t -*-

(use-package doom-modeline
  :ensure t
  :init
  (doom-modeline-mode 1)
  :custom
  ;; Determines the style used by `doom-modeline-buffer-file-name'.
  ;;
  ;; Given ~/Projects/FOSS/emacs/lisp/comint.el
  ;;   auto => emacs/lisp/comint.el (in a project) or comint.el
  ;;   truncate-upto-project => ~/P/F/emacs/lisp/comint.el
  ;;   truncate-from-project => ~/Projects/FOSS/emacs/l/comint.el
  ;;   truncate-with-project => emacs/l/comint.el
  ;;   truncate-except-project => ~/P/F/emacs/l/comint.el
  ;;   truncate-upto-root => ~/P/F/e/lisp/comint.el
  ;;   truncate-all => ~/P/F/e/l/comint.el
  ;;   truncate-nil => ~/Projects/FOSS/emacs/lisp/comint.el
  ;;   relative-from-project => emacs/lisp/comint.el
  ;;   relative-to-project => lisp/comint.el
  ;;   file-name => comint.el
  ;;   buffer-name => comint.el<2> (uniquify buffer name)
  ;;
  ;; If you are experiencing the laggy issue, especially while editing remote files
  ;; with tramp, please try `file-name' style.
  ;; Please refer to https://github.com/bbatsov/projectile/issues/657.
  (doom-modeline-buffer-file-name-style 'truncate-upto-root)

  ;; Whether display icons in the mode-line.
  ;; While using the server mode in GUI, should set the value explicitly.
  (doom-modeline-icon (display-graphic-p))

  ;; Whether display the icon for `major-mode'. It respects `doom-modeline-icon'.
  (doom-modeline-major-mode-icon t)

  ;; Whether display the colorful icon for `major-mode'.
  ;; It respects `all-the-icons-color-icons'.
  (doom-modeline-major-mode-color-icon t)

  ;; Whether display the icon for the buffer state. It respects `doom-modeline-icon'.
  (doom-modeline-buffer-state-icon t)
  ;; Whether display the minor modes in the mode-line.
  (doom-modeline-minor-modes nil)

  ;; Whether display the GitHub notifications. It requires `ghub' package.
  (doom-modeline-github nil)

  ;; The interval of checking GitHub.
  (doom-modeline-github-interval (* 30 60))
  )

(use-package fancy-battery
  ;; :demand
  :config
  (add-hook 'after-init-hook #'fancy-battery-mode)
  :custom
  (fancy-battery-show-percentage t)
  )

;; (use-package nyan-mode
;;   :ensure t
;;   :init
;;   (setq nyan-animate-nyancat t)
;;   (setq nyan-wavy-trail t)
;;   (setq nyan-minimum-window-width 60)
;;   (setq nyan-bar-length 20)
;;   (nyan-mode)
;;   )

(setq display-time-24hr-format t)
(setq display-time-format "%H:%M")
(setq display-time-default-load-average nil)
(display-time-mode 1)

;; ------------
(provide 'init-doom-modeline)
