;;; early-init.el --- Early initialization. -*- lexical-binding: t -*-

;; Increase garbage collection threshold during startup
(setq gc-cons-threshold most-positive-fixnum)

;; Disable package.el in favor of straight.el
(setq package-enable-at-startup nil)

;; Enable imenu support for use-package
(setq use-package-enable-imenu-support t)

;; Only load newer files in non-interactive mode
(setq load-prefer-newer noninteractive)

;; Default to UTF-8 encoding
(prefer-coding-system 'utf-8)

;; Don't resize frames implicitly
(setq frame-inhibit-implied-resize t)

;; Remove UI elements
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)
(when (featurep 'ns)
  (push '(ns-transparent-titlebar . t) default-frame-alist))
(setq-default mode-line-format nil)

;; Add config directory to load path
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))
