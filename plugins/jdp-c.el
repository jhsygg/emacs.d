;;CC-mode配置
(require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)

;;C语言编辑策略
(setq c-default-style "k&r"
      c-basic-offset 8)

(defun my-c-mode-common-hook()
  (setq tab-width 8 indent-tabs-mode nil)
  ;;; hungry-delete and auto-newline
  (c-toggle-auto-hungry-state 1)
  ;;按键定义
  (define-key c-mode-base-map [(control \`)] 'hs-toggle-hiding)
  (define-key c-mode-base-map [(return)] 'newline-and-indent)
  (define-key c-mode-base-map [(f7)] 'compile)
  (define-key c-mode-base-map [(meta \`)] 'c-indent-command)
  ;;  (define-key c-mode-base-map [(tab)] 'hippie-expand)
  (define-key c-mode-base-map [(tab)] 'my-indent-or-complete)
  (define-key c-mode-base-map [(meta ?/)] 'semantic-ia-complete-symbol-menu)

  ;;预处理设置
  (setq c-macro-shrink-window-flag t)
  (setq c-macro-preprocessor "cpp")
  (setq c-macro-cppflags " ")
  (setq c-macro-prompt-flag t)
  (setq hs-minor-mode t)
  (setq abbrev-mode t)
)
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

;;C++语言策略
(defun my-c++-mode-hook()
  (setq tab-width 4 indent-tabs-mode nil)
  (c-set-style "stroustrup")
  ;;  (define-key c++-mode-map [f3] 'replace-regexp)
  )

;; 导入cedet
(require 'cedet)

;; 配置Semantic的检索范围
(setq semanticdb-project-roots 
      (list
       (expand-file-name "/")))

;; 自动补齐命令，如果在单词中间就补齐，否则就是tab
(defun my-indent-or-complete ()
  (interactive)
  (if (looking-at "\\>")
      (hippie-expand nil)
    (indent-for-tab-command))
  )
 
(global-set-key [(control tab)] 'my-indent-or-complete)


;; hippie的自动补齐策略，优先调用了senator的分析结果
(autoload 'senator-try-expand-semantic "senator")

(setq hippie-expand-try-functions-list
      '(
        senator-try-expand-semantic
        try-expand-dabbrev
        try-expand-dabbrev-visible
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-expand-list
        try-expand-list-all-buffers
        try-expand-line
        try-expand-line-all-buffers
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-whole-kill
        )
      )

(global-set-key [(f5)] 'speedbar)
(define-key c-mode-base-map [(f7)] 'compile)

(global-set-key "\C-ci" 'compile)
