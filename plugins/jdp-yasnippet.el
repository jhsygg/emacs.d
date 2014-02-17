;; (add-to-list 'load-path "~/.emacs.d/plugins")
;; (require 'yasnippet-bundle)
;; (yas/initialize)
;; (yas/load-directory "~/.emacs.d/plubins/yasnippet-0.6.1c/snippets")

(add-to-list 'load-path "~/.emacs.d/yasnippet-snappets")
(require 'yasnippet)
(setq yas/prompt-functions 
      '(yas/dropdown-prompt yas/x-prompt yas/completing-prompt yas/ido-prompt yas/no-prompt))
(yas/global-mode 1)
(yas/expand)
(yas/minor-mode-on)
