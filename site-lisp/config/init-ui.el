;;; -*- lexical-binding: t -*-

;; TitleBar
(setq-default frame-title-format '("Damacs"))
(global-hl-line-mode 1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; (set-face-attribute 'default nil :height 110)

;; Prettify Symbols
(global-prettify-symbols-mode 1)
(defun add-pretty-lambda ()
  "Make some word or string show as pretty Unicode symbols.  See https://unicodelookup.com for more."
  (setq prettify-symbols-alist
        '(("lambda" . 955)
          ("delta" . 120517)
          ("epsilon" . 120518)
          ("->" . 8594)
          ("<=" . 8804)
          (">=" . 8805))))
(add-hook 'prog-mode-hook 'add-pretty-lambda)
(add-hook 'org-mode-hook 'add-pretty-lambda)

;; BetterMiniBuffer
;; (defun abort-minibuffer-using-mouse ()
;;   "Abort the minibuffer when using the mouse."
;;   (when (and (>= (recursion-depth) 1) (active-minibuffer-window))
;;     (abort-recursive-edit)))
;; (add-hook 'mouse-leave-buffer-hook 'abort-minibuffer-using-mouse)
;; keep the point out of the minibuffer
;; (setq-default minibuffer-prompt-properties '(read-only t point-entered minibuffer-avoid-prompt face minibuffer-prompt))

;; DisplayLineOverlay
(defun display-line-overlay+ (pos str &optional face)
  "Display line at POS as STR with FACE.
FACE defaults to inheriting from default and highlight."
  (let ((ol (save-excursion
              (goto-char pos)
              (make-overlay (line-beginning-position)
                            (line-end-position)))))
    (overlay-put ol 'display str)
    (overlay-put ol 'face
                 (or face '(:background null :inherit highlight)))
    ol))

;; AceWindow
(require 'ace-window)
(global-set-key (kbd "C-x C-o") 'ace-window)

;; DisLineNum
;; Hook line numbers to only when files are opened, also use linum-mode for emacs-version< 26
(if (version< emacs-version "26")
    (global-linum-mode)
  (add-hook 'text-mode-hook #'display-line-numbers-mode)
  (add-hook 'prog-mode-hook #'display-line-numbers-mode))
;; Display column numbers in modeline
(column-number-mode 1)

(require 'init-winum)
(require 'init-fonts)
(require 'init-doom-themes)
(require 'init-doom-modeline)
;; (require 'init-nyan)

;; SmoothScroll
;; Vertical Scroll
(setq scroll-step 1)
(setq scroll-margin 1)
(setq scroll-conservatively 101)
(setq scroll-up-aggressively 0.01)
(setq scroll-down-aggressively 0.01)
(setq auto-window-vscroll nil)
(setq fast-but-imprecise-scrolling nil)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
;; Horizontal Scroll
(setq hscroll-step 1)
(setq hscroll-margin 1)

;; Fullscreen
;; (toggle-frame-fullscreen)

;; Startup
(require 'init-dashboard)

;; ---------------
(provide 'init-ui)
