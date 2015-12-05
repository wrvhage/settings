(menu-bar-mode -1)
(add-to-list 'load-path "~/.emacs.d/lisp")

;; make the tab key do indent AND completion
(set-default 'tab-always-indent 'complete)


;; Editor config
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/editorconfig-emacs")
(load "editorconfig")
(editorconfig-mode 1)

;; MELPA packages
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))
