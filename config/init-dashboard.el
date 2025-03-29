;;; init-dashboard.el --- Pretty startup dashboard -*- lexical-binding: t; -*-

(use-package dashboard
  :ensure t
  :init
  ;; Basic appearance
  (setq dashboard-startup-banner 'official
	dashboard-banner-logo-title "Damcs - Thoughts Shape Reality"
	dashboard-center-content t
	dashboard-vertically-center-content t
        dashboard-page-separator "\n\f\n"
        dashboard-projects-backend 'project-el
        dashboard-path-style 'truncate-middle
        dashboard-path-max-length 60
	dashboard-show-shortcuts nil
	;; Display items
	dashboard-items '((recents   . 5)
                          (projects  . 5)
                          (bookmarks . 3))
	;; Enable icons if available
	dashboard-display-icons-p t
	dashboard-set-file-icons t	
	dashboard-set-heading-icons t
	dashboard-set-footer t
	dashboard-heading-icons '((recents   . "nf-oct-history")
                                  (bookmarks . "nf-oct-bookmark")
                                  (agenda    . "nf-oct-calendar")
                                  (projects  . "nf-oct-briefcase")
                                  (registers . "nf-oct-database"))
	;; Footer message	
	dashboard-footer-messages
        '("Happy hacking, Emacs Warrior!"
          "Keep calm and write Lisp."
          "One buffer at a time.")
	;; dashboard-footer-icon (all-the-icons-octicon "heart"
        ;;                                              :height 1.1
        ;;                                              :v-adjust -0.05
        ;;                                              :face 'error)
	)

  ;; Set dashboard as the startup screen
  (dashboard-setup-startup-hook))


(provide 'init-dashboard)
;;; init-dashboard.el ends here
