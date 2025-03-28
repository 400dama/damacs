;;; init-treemacs.el --- Treemacs file tree navigation -*- lexical-binding: t; -*-

(use-package treemacs
  :ensure t
  :defer t
  :bind
  (("C-x t t" . treemacs)                                      ;; Toggle Treemacs
   ("C-c t p" . treemacs-add-and-display-current-project)      ;; Add current project
   ("C-c t e" . treemacs-add-and-display-current-project-exclusively) ;; Replace with current
   ("C-c t f" . my/treemacs-open-current-file)                 ;; Reveal current file
   ("C-c t w" . treemacs-select-window))                       ;; Focus Treemacs window
  :config
  ;; Don't persist project workspace between sessions
  (setq treemacs-persist-file (expand-file-name "treemacs-persist.el"
                                                temporary-file-directory))

  ;; Prevent Treemacs from stealing focus
  (setq treemacs-is-never-other-window t))

(use-package treemacs-all-the-icons
  :after treemacs
  :ensure t
  :config
  ;; Use all-the-icons theme
  (treemacs-load-theme "all-the-icons"))

(defun my/treemacs-open-current-file ()
  "Open Treemacs and reveal the current buffer's file."
  (interactive)
  (treemacs)
  (treemacs-find-file))

(provide 'init-treemacs)
;;; init-treemacs.el ends here
