;;; -*- lexical-binding: t -*-
(use-package eaf
  :load-path (lambda () (expand-file-name "emacs-application-framework" damacs-extension-dir))
  :if eaf-env-p
  :custom
  (browse-url-browser-function #'eaf-open-browser) ;; Make EAF Browser my default browser
  (eaf-browser-continue-where-left-off t)
  (eaf-start-python-process-when-require t)
  (eaf-browser-default-zoom 1.25)
  (eaf-browser-dark-mode nil)
  (eaf-browser-scroll-step 200)
  (eaf-browser-enable-adblocker t)
  (eaf-file-manager-show-preview nil)
  (eaf-pdf-dark-mode "ignore")
  :demand
  :bind
  (
   :prefix-map eaf-map
   :prefix "C-' e"
   ("j" . eaf-open-in-file-manager)
   ("c" . eaf-open-browser)
   ("g" . eaf-open-git)
   ;; ("M-z r" . eaf-open-rss-reader)
   ;; ("M-m r" . eaf-open-rss-reader)
   )
  :config
  ;; Require all EAF apps unconditionally, change to apps you're interested in.
  (require 'eaf-jupyter)
  ;; (require 'eaf-mermaid)
  (require 'eaf-file-browser)
  (require 'eaf-netease-cloud-music)
  (require 'eaf-git)
  (require 'eaf-markdown-previewer)
  (require 'eaf-music-player)
  (require 'eaf-video-player)
  (require 'eaf-rss-reader)
  (require 'eaf-airshare)
  (require 'eaf-vue-demo)
  (require 'eaf-terminal)
  (require 'eaf-demo)
  (require 'eaf-pdf-viewer)
  (require 'eaf-image-viewer)
  (require 'eaf-system-monitor)
  (require 'eaf-mindmap)
  (require 'eaf-file-sender)
  (require 'eaf-org-previewer)
  (require 'eaf-browser)
  (require 'eaf-file-manager)
  (require 'eaf-camera)

  (when (display-graphic-p)
    (require 'eaf-all-the-icons))
  (defalias 'browse-web #'eaf-open-browser)
  (eaf-bind-key nil "M-q" eaf-browser-keybinding)
  ;; (eaf-bind-key open_link "C-' c" eaf-browser-keybinding)
  ;; (eaf-bind-key open_devtools "M-i" eaf-browser-keybinding)
  ;; (eaf-bind-key insert_or_recover_prev_close_page "X" eaf-browser-keybinding)
  ;; (eaf-bind-key scroll_up "RET" eaf-pdf-viewer-keybinding)
  ;; (eaf-bind-key delete_cookies "C-M-q" eaf-browser-keybinding)
  ;; (eaf-bind-key delete_all_cookies "C-M-Q" eaf-browser-keybinding)
  ;; (eaf-bind-key clear_history "C-M-p" eaf-browser-keybinding)
  ;; (eaf-bind-key scroll_down_page "DEL" eaf-pdf-viewer-keybinding)
  ;; (eaf-bind-key scroll_down_page "u" eaf-pdf-viewer-keybinding)
  ;; (eaf-bind-key scroll_up_page "d" eaf-pdf-viewer-keybinding)
  ;; (eaf-bind-key scroll_to_end "M->" eaf-pdf-viewer-keybinding)
  ;; (eaf-bind-key scroll_to_begin "M-<" eaf-pdf-viewer-keybinding)
  ;; (eaf-bind-key quit-window "q" eaf-pdf-viewer-keybinding)
  ;; (eaf-bind-key zoom_in "C-=" eaf-pdf-viewer-keybinding)
  ;; (eaf-bind-key zoom_out "C--" eaf-pdf-viewer-keybinding)
  ;; (eaf-bind-key take_photo "p" eaf-camera-keybinding)
  ;; (eaf-bind-key eaf-send-key-sequence "M-]" eaf-terminal-keybinding)
  ;; (eaf-bind-key eaf-send-key-sequence "M-]" eaf-terminal-keybinding)
  ;; (eaf-bind-key js_select_next_file "n" eaf-file-manager-keybinding)
  ;; (eaf-bind-key js_select_prev_file "p" eaf-file-manager-keybinding)
  ;; (eaf-bind-key new_file "F" eaf-file-manager-keybinding)
  ;; (eaf-bind-key new_directory "D" eaf-file-manager-keybinding)
  ;; (eaf-bind-key toggle_preview "P" eaf-file-manager-keybinding)

  )


;; PopwebPac
(use-package popweb
  :if eaf-env-p
  :load-path (lambda () (expand-file-name "popweb" damacs-extension-dir))
  :init
  (add-to-list 'load-path (expand-file-name "popweb/extension/latex" damacs-extension-dir))
  (add-to-list 'load-path (expand-file-name "popweb/extension/dict" damacs-extension-dir))
  (require 'popweb-latex)
  (require 'popweb-dict-youdao)
  :custom
  (popweb-popup-pos "point-bottom")
  :hook ((org-mode . popweb-latex-mode)
         (tex-mode . popweb-latex-mode)
         (ein:markdown-mode . popweb-latex-mode))
  )
;; -PopwebPac

;; ------------
(provide 'init-eaf)
