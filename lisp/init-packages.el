(setq package-archives '(
                         ("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                         ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
                         ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			                   )


      )

(require 'cl)

(require 'smex)

(require 'elpy)
(elpy-enable)
(setq elpy-rpc-python-command "/anaconda3/envs/python35/bin/python3")
(setq python-shell-interpreter "/anaconda3/envs/python35/bin/ipython3")
(setq pyvenv-virtualenvwrapper-python "/anaconda3/envs/python35/bin/python3")


(add-hook 'after-init-hook #'global-flycheck-mode);全局开启

(when (require 'flycheck nil t)
  (setq elpy-modules(delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)


(provide 'init-packages)


