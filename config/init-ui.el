;;; init-ui.el --- UI configuration -*- lexical-binding: t -*-
;; UI Configuration
(use-package doom-themes
  :ensure t
  :init
  ;; Load the theme (doom-solarized-dark)
  (load-theme 'doom-solarized-dark-high-contrast t)
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t)  ; if nil, italics is universally disabled
  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-atom")
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification
  (doom-themes-org-config))

;; Install and configure doom-modeline
(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-height 25
        doom-modeline-bar-width 3
        doom-modeline-icon t
        doom-modeline-major-mode-icon t
        doom-modeline-minor-modes nil))

;; Install and configure all-the-icons
(use-package all-the-icons
  :ensure t
  :if (display-graphic-p)
  :config
  ;; Uncomment the following line if you're using dired
  ;; (all-the-icons-dired-mode 1)
  )

;; Note: After installing all-the-icons, you need to run:
;; M-x all-the-icons-install-fonts

;; Enable line numbers
(global-display-line-numbers-mode t)

;; Disable line numbers for some modes
(dolist (mode '(org-mode-hook
                term-mode-hook
                shell-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; Display time
(use-package time
  :init (setq display-time-default-load-average t
              display-time-format "%H:%M"))

;; Provide the feature
(provide 'init-ui)
;;; init-ui.el ends here

