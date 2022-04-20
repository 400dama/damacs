;;; -*- lexical-binding: t -*-
(require 'page-break-lines)
(page-break-lines-mode)

(require 'dashboard)
;; Set the title
(setq dashboard-banner-logo-title "Damacs")
;; Set the banner
(setq dashboard-startup-banner 'logo)
;; Value can be
;; 'official which displays the official emacs logo
;; 'logo which displays an alternative emacs logo
;; 1, 2 or 3 which displays one of the text banners
;; "path/to/your/image.gif", "path/to/your/image.png" or "path/to/your/text.txt" which displays whatever gif/image/text you would prefer

;; Content is not centered by default. To center, set
(setq dashboard-center-content t)

;; To disable shortcut "jump" indicators for each section, set
(setq dashboard-show-shortcuts t)


;; To customize which widgets are displayed, you can use the following snippet
(setq dashboard-items '(
			(projects . 5)
			(recents  . 5)
                        (bookmarks . 5)
                        ;; (registers . 5)
                        ;; (agenda . 5)
			))

;; To add icons to the widget headings and their items:
(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)

;; To modify heading icons with another icon from all-the-icons octicons:
(dashboard-modify-heading-icons '((recents . "file-text")
                                  (bookmarks . "book")))

(setq dashboard-page-separator "\n\f\n")

;; Open Dashboard function
(defun open-dashboard ()
  "Open the *dashboard* buffer and jump to the first widget."
  (interactive)
  (if (get-buffer dashboard-buffer-name)
      (kill-buffer dashboard-buffer-name))
  (dashboard-insert-startupify-lists)
  (switch-to-buffer dashboard-buffer-name)
  (goto-char (point-min))
  (delete-other-windows))

(global-set-key (kbd "C-' d") #'open-dashboard)




(dashboard-setup-startup-hook)


;; ------------
(provide 'init-dashboard)
