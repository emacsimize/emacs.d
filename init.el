;; Thanks go to Sacha 
;; http://sachachua.com/blog/2012/06/literate-programming-emacs-configuration-file/
;; This sets up the load path so that we can override it
(package-initialize nil)
;; Override the packages with the git version of Org
(add-to-list 'load-path "~/emacs.d/elisp/org-mode/lisp")
(add-to-list 'load-path "~/emacs.d/elisp/org-mode/contrib/lisp")
;; Load the rest of the packages

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" default)))
 '(dired-hide-details-hide-information-lines nil)
 '(dired-hide-details-hide-symlink-targets nil)
 '(eshell-modules-list
   (quote
    (eshell-alias eshell-banner eshell-basic eshell-cmpl eshell-dirs eshell-glob eshell-hist eshell-ls eshell-pred eshell-prompt eshell-script eshell-term eshell-tramp eshell-unix))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "darkslategrey" :foreground "AntiqueWhite" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 137 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))


(package-initialize t)
(require 'org)
(require 'ob-tangle)
(org-babel-load-file (expand-file-name "~/.emacs.d/emacsimize.org"))
(put 'upcase-region 'disabled nil)
