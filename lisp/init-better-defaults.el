

;; open recently files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)


(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)


(provide 'init-better-defaults)
