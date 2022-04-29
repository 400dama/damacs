;;; -*- lexical-binding: t -*-

;; UserInfo
(setq user-full-name "400dama")
(setq user-mail-address "gotenks9002@gmail.com")

;; User Path
(defvar damacs-root-dir (file-truename "~/damacs/site-lisp"))
(defvar damacs-config-dir (concat damacs-root-dir "/config"))
(defvar damacs-extension-dir (concat damacs-root-dir "/extensions"))
(defvar damacs-module-dir (concat damacs-root-dir "/modules"))

;; Consts
(defconst *sys/win32*
  (eq system-type 'windows-nt)
  "Are we running on a WinTel system?")

(defconst *sys/linux*
  (eq system-type 'gnu/linux)
  "Are we running on a GNU/Linux system?")

(defconst *sys/mac*
  (eq system-type 'darwin)
  "Are we running on a Mac system?")

(require 'sudo-edit)

;; Replace selection on insert
(delete-selection-mode 1)

;; Ask before killing emacs
(setq confirm-kill-emacs 'y-or-n-p)
(fset 'yes-or-no-p 'y-or-n-p)
(setq use-dialog-box nil)

;; Turn Off Cursor Alarms
(setq ring-bell-function 'ignore)

;; Show Keystrokes in Progress Instantly
(setq echo-keystrokes 0.1)

;; Don't Lock Files
(setq-default create-lockfiles nil)

;; Better Compilation
(setq-default compilation-always-kill t) ; kill compilation process before starting another
(setq-default compilation-ask-about-save nil) ; save all buffers on `compile'
(setq-default compilation-scroll-output t)

;; ad-handle-definition warnings are generated when functions are redefined with `defadvice',
;; they are not helpful.
(setq ad-redefinition-action 'accept)

;; So Long mitigates slowness due to extremely long lines.
;; Currently available in Emacs master branch *only*!
(when (fboundp 'global-so-long-mode)
  (global-so-long-mode))

;; Enable `erase-buffer' function
(put 'erase-buffer 'disabled nil)

;; Unbind unneeded keys
(global-set-key (kbd "C-z") nil)
(global-set-key (kbd "C-'") nil)

;; EditConfig
(defun edit-configs ()
  "Opens the init.ef file."
  (interactive)
  (find-file "~/damacs/site-lisp/config/init.el"))
(global-set-key (kbd "C-' e") #'edit-configs)
;; Restart Emacs
(global-set-key (kbd "C-' r") #'restart-emacs)
;; ReadLines
(defun read-lines (file-path)
  "Return a list of lines of a file at FILE-PATH."
  (with-temp-buffer (insert-file-contents file-path)
                    (split-string (buffer-string) "\n" t)))

;; WhereAmI
(defun where-am-i ()
  "An interactive function showing function `buffer-file-name' or `buffer-name'."
  (interactive)
  (message (kill-new (if (buffer-file-name) (buffer-file-name) (buffer-name)))))

;; History
;; (use-package recentf
;;   :ensure nil
;;   :hook (after-init . recentf-mode)
;;   :custom
;;   (recentf-auto-cleanup "05:00am")
;;   (recentf-max-saved-items 200)
;;   (recentf-exclude '((expand-file-name package-user-dir)
;;                      ".cache"
;;                      ".cask"
;;                      ".elfeed"
;;                      "bookmarks"
;;                      "cache"
;;                      "ido.*"
;;                      "persp-confs"
;;                      "recentf"
;;                      "undo-tree-hist"
;;                      "url"
;;                      "COMMIT_EDITMSG\\'")))
;; When buffer is closed, saves the cursor location
;; (save-place-mode 1)
;; ;; Set history-length longer
;; (setq-default history-length 500)

;; yes-or-no
;; (defun yes-or-no-p->-y-or-n-p (orig-fun &rest r)
;;   (cl-letf (((symbol-function 'yes-or-no-p) #'y-or-n-p))
;;     (apply orig-fun r)))

;; (advice-add 'kill-buffer :around #'yes-or-no-p->-y-or-n-p)

;; (setq use-short-answers t)
;; (define-key y-or-n-p-map [return] 'act)

;; - Dirvish
;; (require 'init-dirvish)

;; ------------------
(provide 'init-basic)
