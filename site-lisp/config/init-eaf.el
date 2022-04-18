;;; -*- lexical-binding: t -*-
(require 'eaf)

;; keybind
;; (eaf-bind-key scroll_up "M-j" eaf-browser-keybinding)
;; (eaf-bind-key scroll_down "M-k" eaf-browser-keybinding)
;; (eaf-bind-key scroll_up_page "M-n" eaf-browser-keybinding)
;; (eaf-bind-key scroll_down_page "M-p" eaf-browser-keybinding)
;; (eaf-bind-key open_link "M-h" eaf-browser-keybinding)
;; (eaf-bind-key open_link_new_buffer "M-H" eaf-browser-keybinding)
;; (eaf-bind-key refresh_page "M-r" eaf-browser-keybinding)

;; Make EAF the Default Browser in Emacs
(setq browse-url-browser-function 'eaf-open-browser)
(defalias 'browse-web #'eaf-open-browser)

;; Make `eaf-browser-restore-buffers' restore last close browser buffers.
(setq eaf-browser-continue-where-left-off t)

;; Enable Adblocker
(eaf-setq eaf-browser-enable-adblocker "true")

;; Default Search Engine
(setq eaf-browser-default-search-engine "duckduckgo")

;; Default Zoom
(eaf-setq eaf-browser-default-zoom "0.85")

;; ------------
(provide 'init-eaf)
