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
;;
;;(use-package python
;;  :ensure t
;;  :mode ("\\.py\\'" . python-mode)
;;  :interpreter ("python" . python-mode)
;;  :config
;;  (setq-default indent-tabs-mode nil)
;;  (setq-default python-indent-offset 4)
;;  (use-package py-autopep8
;;    :ensure t
;;    :hook ((python-mode . py-autopep8-enable-on-save))
;;    ))
;;
;;(use-package company-jedi
;;  :ensure t
;;  :config
;;  (add-hook 'python-mode-hook 'jedi:setup)
;;  (add-hook 'python-mode-hook (lambda ()
;;                                (add-to-list (make-local-variable 'company-backends)
;;                                             'company-jedi))))
;;
;;(use-package elpy
;;  :ensure t
;;  :commands
;;  (elpy-enable python-mode run-python python-shell-send-buffer python-shell-switch-to-shell)
;;  :init
;;  (setq elpy-rpc-python-command "python3")
;;  (defun my-python-shell-run ()
;;    "Run python and pop-up its shell.
;;    Kill process to solve the reload modules problem."
;;    (interactive)
;;    (when (get-buffer-process "Python")
;;      (set-process-query-on-exit-flag (get-buffer-process "Python") nil)
;;      (kill-process (get-buffer-process "Python"))
;;      ;; If you want to clean the buffer too.
;;      (kill-buffer "Python")
;;      ;; Not so fast!
;;      (sleep-for 0.5))
;;    (run-python (python-shell-parse-command) nil nil)
;;    (python-shell-send-buffer)
;;    ;; Pop new window only if shell isnt visible in any frame.
;;    (unless (get-buffer-window "Python" t)
;;      (python-shell-switch-to-shell)))
;;  :hook (elpy-mode . (lambda ()
;;                       (highlight-indentation-mode -1)
;;                       (linum-mode t)))
;;  :bind (:map elpy-mode-map
;;              ("C-e" . 'elpy-format-code)
;;              ("C-w" . 'elpy-pdb-debug-buffer)
;;              ("M-w" . 'elpy-pdb-toggle-breakpoint-at-point)
;;              ("C-l C-p" . 'elpy-pdb-break-at-point)
;;              ("C-c C-c" . 'my-python-shell-run)
;;              ("C-h f" .'python-eldoc-at-point)
;;              ("M-<backspace"
;;               . (lambda ()
;;                   (interactive)
;;                   (with-current-buffer
;;                       (process-buffer (elpy-shell-get-or-create-process))
;;                     (comint-clear-buffer))))))
;;
(provide 'init-python)
;;; init-python.el ends here
