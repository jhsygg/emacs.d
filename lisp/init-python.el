;;; init-python.el --- Python editing -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; I use nix + direnv instead of virtualenv/pyenv/pyvenv, and it is an
;; approach which extends to other languages too. I recorded a
;; screencast about this: https://www.youtube.com/watch?v=TbIHRHy7_JM


(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
                ("SConscript\\'" . python-mode))
              auto-mode-alist))

(setq python-shell-interpreter "python3")

(require-package 'pip-requirements)

(when (maybe-require-package 'toml-mode)
  (add-to-list 'auto-mode-alist '("poetry\\.lock\\'" . toml-mode)))

(when (maybe-require-package 'reformatter)
  (reformatter-define black :program "black" :args '("-")))

(use-package python
  :ensure t
  :mode ("\\.py\\'" . python-mode)
  :interpreter ("python" . python-mode)
  :config
  (setq-default indent-tabs-mode nil)
  (setq-default python-indent-offset 4)
  (use-package py-autopep8
    :ensure t
    :hook ((python-mode . py-autopep8-enable-on-save))
    ))

(use-package company-jedi
  :ensure t
  :config
  (add-hook 'python-mode-hook 'jedi:setup)
  (add-hook 'python-mode-hook (lambda ()
                                (add-to-list (make-local-variable 'company-backends)
                                             'company-jedi))))

(use-package elpy
  :ensure t
  :commands (elpy-enable)
  :config (setq elpy-rpc-backend "jedi"))

(provide 'init-python)
;;; init-python.el ends here
