;;; init-whichkey.el --- which-key popup help system -*- lexical-binding: t; -*-
(use-package which-key
  :diminish
  :hook (after-init . which-key-mode)
  :init
  (setq which-key-idle-delay 0.3
	which-key-prefix-prefix "→"
	which-key-sort-order 'which-key-key-order-alpha
	which-key-min-display-lines 6
	which-key-max-display-lines 20
	which-key-max-display-columns nil
	which-key-max-description-length 35
	which-key-add-column-padding 2
	which-key-separator " : "
	which-key-show-remaining-keys t))

(use-package which-key-posframe
  :diminish
  :custom-face
  (which-key-posframe ((t (:inherit tooltip))))
  (which-key-posframe-border ((t (:background "#504945"))))
  :init
  (setq which-key-posframe-border-width 1
	which-key-posframe-poshandler 'posframe-poshandler-frame-center
	which-key-posframe-parameters '((left-fringe . 5)
                                        (right-fringe . 5)))

  (which-key-posframe-mode 1))

(provide 'init-whichkey)
;;; init-whichkey.el ends here
