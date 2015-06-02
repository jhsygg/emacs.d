(add-to-list 'load-path "~/.emacs.d/el-get/yasnippet")
(require 'yasnippet)

(yas/initialize)
(yas/load-directory "~/.emacs.d/el-get/yasnippet/snippets")

;;
;;(setq yas/prompt-functions 
;;      '(yas/dropdown-prompt yas/x-prompt yas/completing-prompt yas/ido-prompt yas/no-prompt))
;;(yas/global-mode 1)
;;(yas/expand)
;;(yas/minor-mode-on)

