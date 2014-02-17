;;; init-c.el --- Emacs Init: cc-mode configuration.

;;; Code:

(require 'init-programming)

(defun init-c-mode-common-defaults ()
  (setq c-basic-offset 4)
  (c-set-offset 'substatement-open 0))

(setq init-c-mode-common-hook 'init-c-mode-common-defaults)

;; this will affect all modes derived from cc-mode, like
;; java-mode, php-mode, etc
(add-hook 'c-mode-common-hook (lambda ()
                                (run-hooks 'init-c-mode-common-hook)))

(defun init-makefile-mode-defaults ()
  (setq indent-tabs-mode t))

(setq init-makefile-mode-hook 'init-makefile-mode-defaults)

(add-hook 'makefile-mode-hook (lambda ()
                                (run-hooks 'init-makefile-mode-hook)))
(provide 'init-c)

;;; init-c.el ends here
