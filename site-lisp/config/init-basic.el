;;; -*- lexical-binding: t -*-

;; yes-or-no
(defun yes-or-no-p->-y-or-n-p (orig-fun &rest r)
  (cl-letf (((symbol-function 'yes-or-no-p) #'y-or-n-p))
    (apply orig-fun r)))

(advice-add 'kill-buffer :around #'yes-or-no-p->-y-or-n-p)

(setq use-short-answers t)
(define-key y-or-n-p-map [return] 'act)

;; ------------------
(provide 'init-basic)
