;;; -*- lexical-binding: t -*-

;; DashboardPac
(use-package dashboard
  :demand
  :diminish (dashboard-mode page-break-lines-mode)
  :bind
  (("C-' d" . open-dashboard)
   :map dashboard-mode-map
   (("n" . dashboard-next-line)
    ("p" . dashboard-previous-line)
    ("N" . dashboard-next-section)
    ("F" . dashboard-previous-section)))

  :custom
  ;; Set the title
  (dashboard-banner-logo-title "Damacs")
  ;; Set the banner
  (dashboard-startup-banner 'logo)
  ;; To customize which widgets are displayed, you can use the following snippet
  (dashboard-items '((recents  . 5)
                     (bookmarks . 3)
		     ;; (projects . 5)
		     ))

  (initial-buffer-choice (lambda () (get-buffer dashboard-buffer-name)))

  (dashboard-page-separator "\n\f\n")
  ;; To disable shortcut "jump" indicators for each section
  (dashboard-show-shortcuts t)
  ;; Content is not centered by default. To center
  (dashboard-center-content t)
  ;; To add icons to the widget headings and their items:
  (dashboard-set-heading-icons t)
  (dashboard-set-file-icons t)
  ;; To show info about the packages loaded and the init time
  (dashboard-set-init-info t)
  :config
  ;; To modify heading icons with another icon from all-the-icons octicons:
  ;; (dashboard-modify-heading-icons '((recents . "file-text")
  ;;                                   (bookmarks . "book")))
  (dashboard-setup-startup-hook)
  ;; Open Dashboard function
  (defun open-dashboard ()
    "Open the *dashboard* buffer and jump to the first widget."
    (interactive)
    (if (get-buffer dashboard-buffer-name)
        (kill-buffer dashboard-buffer-name))
    (dashboard-insert-startupify-lists)
    (switch-to-buffer dashboard-buffer-name)
    (goto-char (point-min))
    (delete-other-windows)))
;; -DashboardPac

;; PBLPac
(use-package page-break-lines
  :diminish
  :init (global-page-break-lines-mode))
;; -PBLPac
;; ------------
(provide 'init-dashboard)
