;;; -*- lexical-binding: t -*-
(use-package conda
  :ensure t
  :init
  (setq conda-anaconda-home (expand-file-name "/home/parzival/anaconda3"))
  (setq conda-env-home-directory (expand-file-name "/home/parzival/anaconda3"))
  )

(use-package python-mode
  :ensure nil
  :after flycheck
  :mode "\\.py\\'"
  :custom
  (python-indent-offset 4)
  ;; (flycheck-python-pycompile-executable "python3")
  ;; (python-shell-interpreter "python3")
  )

;; ------------
(provide 'init-python)
