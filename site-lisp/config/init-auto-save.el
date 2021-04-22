;;; -*- lexical-binding: t -*-

(require 'auto-save)
(auto-save-enable)

;; quietly save
(setq auto-save-silent t)

;; automatically delete spaces at the end of the line when saving
(setq auto-save-delete-trailing-whitespace t)

;; ------------
(provide 'init-auto-save)
