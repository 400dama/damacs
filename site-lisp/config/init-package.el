(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa-cn" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa/")
	     '("gnu-cn"   . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/")
             'APPEND)

;; --------------------
(provide 'init-package)
