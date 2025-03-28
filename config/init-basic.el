;;; init-basic.el --- Basic configuration -*- lexical-binding: t -*-

;; Set custom file location
(setq custom-file (expand-file-name "config/custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init-basic)
