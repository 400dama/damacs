;;; -*- lexical-binding: t -*-
(require 'dirvish)

(dirvish-define-preview exa (file)
  "Use `exa' to generate directory preview."
  (when (file-directory-p file) ; we only interest in directories here
    `(shell . ("exa" "--color=always" "-al" ,file)))) ; use the output of `exa' command as preview

(add-to-list 'dirvish-preview-dispatchers 'exa)

(dirvish-define-preview readme (file)
  "Preview README.md file in a directory when it exists."
  (when (file-directory-p file)
    (let ((readme-file (expand-file-name "README.md" file)))
      (when (file-exists-p readme-file) ; when the README.md exists
        `(buffer . ,(find-file-noselect readme-file t nil)))))) ; use the file buffer as preview

(add-to-list 'dirvish-preview-dispatchers 'readme)

;; (dirvish-attributes '(expanded-state all-the-icons file-size))

;; ------------
(provide 'init-dirvish)
