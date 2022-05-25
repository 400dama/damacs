;;; -*- lexical-binding: t -*-

;; WhichKeyPac
(use-package which-key
  :diminish
  :custom
  ;; Allow C-h to trigger which-key before it is done automatically
  (which-key-show-early-on-C-h t)
  ;; make sure which-key doesn't show normally but refreshes quickly after it is
  ;; triggered.
  (which-key-idle-delay 1.0)
  ;; (setq which-key-idle-delay 10000)
  (which-key-idle-secondary-delay 0.05)

  ;; Use additional padding between columns of keys. This variable specifies the
  ;; number of spaces to add to the left of each column.
  (which-key-add-column-padding 0)

  ;; The maximum number of columns to display in the which-key buffer. nil means
  ;; don't impose a maximum.
  (which-key-max-display-columns nil)

  ;; Set the separator used between keys and descriptions. Change this setting to
  ;; an ASCII character if your font does not show the default arrow. The second
  ;; setting here allows for extra padding for Unicode characters. which-key uses
  ;; characters as a means of width measurement, so wide Unicode characters can
  ;; throw off the calculation.
  (which-key-separator " → " )
  (which-key-unicode-correction 3)

  ;; Set the prefix string that will be inserted in front of prefix commands
  ;; (i.e., commands that represent a sub-map).
  (which-key-prefix-prefix "+" )

  ;; Set the special keys. These are automatically truncated to one character and
  ;; have which-key-special-key-face applied. Disabled by default. An example
  ;; setting is
  ;; (setq which-key-special-keys '("SPC" "TAB" "RET" "ESC" "DEL"))
  (which-key-special-keys nil)

  ;; Show the key prefix on the left, top, or bottom (nil means hide the prefix).
  ;; The prefix consists of the keys you have typed so far. which-key also shows
  ;; the page information along with the prefix.
  (which-key-show-prefix 'left)
  :config
  (which-key-mode))
;; -WhichKeyPac

;; ------------
(provide 'init-which-key)
