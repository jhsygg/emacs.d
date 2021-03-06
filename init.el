;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq debug-on-error t)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-benchmarking)

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))

;;----------------------------------------------------------------------------
;; Temporarily reduce garbage collection during startup
;;----------------------------------------------------------------------------
(defconst sanityinc/initial-gc-cons-threshold gc-cons-threshold
  "Initial value of `gc-cons-threshold' at start-up time.")
(setq gc-cons-threshold (* 128 1024 1024))
(add-hook 'after-init-hook
(lambda () (setq gc-cons-threshold sanityinc/initial-gc-cons-threshold)))

;; ----------------------------------------------------------------------------
;; Bootstrap config
;; ----------------------------------------------------------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el
;;Call (package-initialize)
(require 'init-elpa) ;;Machinery for installing required packages
(require 'init-exec-path) ;;Set up $PATH

;;-----------------------------------------------------------------------------
;; Allow users to provide an optional "init-preload-local.el"
;;-----------------------------------------------------------------------------
(require 'init-preload-local nil t)

;; ----------------------------------------------------------------------------
;; Load configs for specific features and modes
;; ----------------------------------------------------------------------------
(require-package 'wgrep)
;;(require-package 'project-local-variables)
(require-package 'diminish)
(require-package 'scratch)
;;(require-package 'mwe-log-commands)

(require 'init-python-mode)
(require 'init-python)
;; (require 'init-misc)
;; (require 'init-sql)
(require 'init-auto-complete)
(require 'init-compile)


(message "* --[ Loading my Emacs init file ]--")

;; uptimes
(setq emacs-load-start-time (current-time))

(require 'cl)
(require 'gnutls)

;; 设置路径
(setq plugins (expand-file-name "~/.emacs.d/plugins/"))
(setq el-get-path (expand-file-name "~/.emacs.d/el-get/"))
(add-to-list 'load-path plugins) ;; 插件默认路径，本行必须是配置文件首行；
(setq default-directory "~/org/")


(require 'cedet)
(global-ede-mode t)

(auto-image-file-mode t) 

(require 'qq-mode)

(require 'semantic/analyze)
(provide 'semantic-analyze)
(provide 'semantic-ctxt)
(provide 'semanticdb)
(provide 'semanticdb-find)
(provide 'semanticdb-mode)
(provide 'semantic-load)

(require 'semantic)

(require 'css-mode)

(require 'unicad)

(add-to-list 'load-path "~/.emacs.d/el-get/ecb")
(require 'ecb)

;; (require 'latex-frame-mode)

;;(require 'chinese-calendar)
(require 'appt)

;;(require 'idle-highlight-mode)

(load-library "hideshow")
(add-hook 'php-mode-hook 'hs-minor-mode)

;; (require 'session)
;; (add-hook 'after-init-hook 'session-initalize)

;; (require 'weblogger)
;; (global-set-key (kbd "C-cbs") 'weblogger-start-entry)

;; ==================================
;; chinese font set
;; ==================================
;; font 13
;; set-frame-font "13")

;;全局配置，避免多语言混乱
(set-language-environment 'utf-8)
;;(set-language-environment 'chinese-gb)
(set-locale-environment "utf-8")

(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8,utf-8))
(setq-default pathname-coding-system 'utf-8)
(setq file-name-coding-system 'utf-8)
;;(set-file-coding-system 'utf-8)
(setq ansi-color-for-comint-mode t)

(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)

;;不生成临时文件
(setq make-backup-files nil)

(setq oauth-use-curl nil)

(setq default-process-coding-system
      '(utf-8 . utf-8))
(setq-default pathname-coding-system 'utf-8)

;;(set-frame-fon1")

;;(set-frame-font "-microsoft-yahei consolas hybrid-normal-normal-normal-*-17-*-*-*-*-0-iso10646-1")

;; chinese font
(if (and (fboundp 'daemonp) (daemonp))
    (add-hook 'after-make-frame-functions
              (lambda (frame)
                (with-selected-frame frame
                  (set-fontset-font "fontset-default"
                                    'chinese-gbk "Microsoft YaHei 13"))))

(set-fontset-font "fontset-default" 'chinese-gbk "Microsoft YaHei 13"))

(set-default-font "WenQuanYi Micro Hei Mono-11")

(require 'init-fonts)

;;打印机配置
(require 'ps-print)
(setq ps-paper-type 'a4
      ps-font-size 8.25
      ps-print-header nil
      ps-landscape-mode nil)
(require 'ps-mule)
(setq ps-nultibyte-buffer 'bdf-font)
(setq bdf-directory-list '("~/.emacs.d/fonts"))
(setq ps-mule-font-into-database-bdf '((utf-8 (normal bdf "gb24st.bdf.bdf")(bold bdf "gb24st.bdf.bdf")(italic bdf "gb24st.bdf.bdf")(bold-italic-bdf "gb24st.bdf.bdf"))))


;;==========================================
;;外观设置
;;==========================================

;;禁用启动画面
(setq ihibit-startup-message t)

;;禁用工具栏
(tool-bar-mode -1)

;;禁用滚动栏
(scroll-bar-mode -1)

;;光标靠近鼠标的时候，让鼠标自动让开
(mouse-avoidance-mode 'animate)

;;禁用菜单栏，f10开启关门菜单
(menu-bar-mode nil)

;;========================================
;;键绑定
;;========================================

;;C-z 设置标记,M-x iconify-or-deiconify-frame:C-z,C-x C-z
(global-set-key (kbd "C-z") 'set-mark-command)

;;f10显示/隐藏菜单栏;;M-x menu-bar-open
(global-set-key [(f10)] 'menu-bar-mode)

;;win+s进入shell;; M-x shell
(global-set-key (kbd "s-s") 'shell)

;;win+space 设置标记
(global-set-key (kbd "s-SPC") 'set-mark-command)

;;=======================================
;;设置缓冲区
;;=======================================

;;设定行距
(setq line-spacing 4)

;;页宽
(setq fill-column 60)

;;缺省模式 text-mode
(setq major-mode 'text-mode)

;;页面平滑滚动，scroll-margin 3 靠近屏幕边沿3行时开始滚动，可以很好地看到上下文
(setq scroll-margin 3
      scroll-conservatively 10000)

;;高亮显示成对括号，但不来回弹跳
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;粘贴于光标处，而不是鼠标处
(setq mouse-yank-at-point t)

(setq kill-ring-max 200)

;;======================================
;;回显区
;;======================================

;;闪屏报警
(setq visible-bell t)

;;使用y or n 提问
(fset 'yes-or-no-p 'y-or-n-p)

;;锁定行高
(setq resize-mini-windows nil)

;;递归minibuffer
(setq enable-recursive-minibuffers t)

;;===================================
;;状态栏
;;===================================

;;显示时间
(display-time)
;;时间格式
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-interval 10)

;;显示列号
(setq column-number-mode t)

;;标题栏显示 %f 缓冲区完整路径 %p 页面百分数 %l 行号
(setq frame-title-format "%f")

;;==================================
;;编辑设定
;;==================================

;;不生成临时文件
(setq-default mark-backup-files nil)

;;只渲染当前屏幕语法高亮，加快显示速度
;;(setq lazy-lock-mode t)
;;(setq font-lock-support-mode 'lazy-lock-mode)
;;(setq font-lock-maximuM-decoration t)

;;将错误信息显示在回显区
(condition-case err
    (progn
      (require 'xxx))
  (error
   (message "can't load xxx-mode %s" (cdr err))))

;;使用x剪切板
(setq x-select-enable-clipboard t)
;;设定剪贴板内容形式 适应firefox
(set-clipboard-coding-system 'ctext)


;;在标题栏显示buffer的名字，而不是默认的没用的显示
(setq frame-title-format "emacs@%b")
;;括号匹配时显示另外一边的括号，不跳光标
(setq show-paren-style 'parentheses)

;;==================配色方案设置=====================

(add-to-list 'load-path "/usr/share/emacs/site-lisp")

(require  'color-theme)
(color-theme-initialize)
(color-theme-dark-blue2)

;;---------------color setup------------------------

;;==================全屏设置=======================

(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
                         (if (equal 'fullboth current-value)
                             (if (boundp 'old-fullscreen) old-fullscreen nil)
                           (progn (setq old-fullscreen current-value)
                                  'fullboth)))))
(global-set-key [f11] 'toggle-fullscreen)

(add-hook 'after-make-frame-functions 'toggle-fullscreen)
;;-------------------end-------------------------

;;=================设置个人信息====================

(setq user-full-name "jhsygg")
(setq user-mail-address "jhsygg@126.com")

;; use clipboard
(setq x-select-enable-clipboard t)

;; 设置hippie-expand 很好用的功能 M-x hippie-expand
(setq hippie-expand-try-functions-list
      '(
        try-expand-dabbrev
        try-expand-dabbrev-visible
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-all-abbrevs
        try-expand-list
        try-expand-line
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol))

;;==================load 配置文件=====================

(require 'jdp-latex)

;; (require 'init-w3m)
;; (require 'init-xml)
;; (load "jdp-erc")
;; (load "jdp-ide")


;; (add-to-list 'load-path "~/.emacs.d/el-get/mysql")
;; (require 'init-sql)

;;(load "jdp-yasnippet")
;; (load "jdp-ac")
;; (load "emacs-emms")
;; (require 'init-c)
;; (load "jdp-c")
(load "jdp-mysql")
(require 'reftex)

;;----------------end----------------------------

;;c/c++环境配置
;;================================================
;;如何让emacs启动后就最大化？
(setq default-frame-alist
      '(
        (top . 30)
        (life . 30)
        (width . 130)
        (hight . 70)
        )
      )

;;显示列号
(setq column-number-mode t)
(setq line-number-mode t)
;;latex 模式下，不打开自动折行
;;(turn-off-auto-fill)

;;显示行数
(global-linum-mode t)

;;=================多媒体emms=================
(setq emms-player-list '(emms-player-mpg123
                         emms-player-mpg321
                         emms-player-ogg123
                         emms-player-mplayer))

;;------------------end-----------------------

;;=====================
;;org-mode
;;=====================
(add-to-list 'load-path "~/.emacs.d/el-get/org-mode/lisp")
(add-to-list 'load-path "~/.emacs.d/el-get/org-mode/contrib/lisp")

(require 'org-install)
(require 'ox-publish)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-sources
   (quote
    (ac-source-yasnippet ac-source-abbrev ac-source-words-in-buffer ac-source-files-in-current-dir ac-source-filename)) t)
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (light-blue)))
 '(display-time-mode t)
 '(erc-autojoin-channels-alist
   (quote
    (("linuxsir.org" "#javalee")
     ("irc.linuxfans.org" "#linuxfans" "#linuxer"))))
 '(erc-email-userid "jdp")
 '(erc-fill-column 67)
 '(erc-fill-prefix " ")
 '(erc-hide-list (quote ("join" "part" "quit")))
 '(erc-nick "jdp")
 '(erc-port 6667)
 '(erc-prompt-for-password nil)
 '(erc-quit-reason (quote erc-quit-reason-zippy))
 '(erc-save-buffer-on-part nil)
 '(matlab-verify-on-save-flag nil t)
 '(org-agenda-files
   (quote
    ("~/org/gtd.org.gpg" "~/org/journal.org.gpg" "~/org/notes.org" "~/org/study.org" "~/org/finished.org")))
 '(org-refile-targets
   (quote
    (("gtd.org.gpg" :maxlevel . 1)
     ("finished.org" :level . 1))))
 '(package-selected-packages (quote (cmd-to-echo alert auto-complete auctex)))
 '(show-paren-mode t)
 '(slime-backend "/usr/share/common-lisp/source/slime/swank-loader.lisp")
 '(tool-bar-mode nil))

(autoload 'org-mode "org" "org mode" t)
(autoload 'org-diary "org" "diary entries from org mode")
(autoload 'org-agenda "org" "multi-file agenda from org mode" t)
(autoload 'org-store-link "org" "store a link to the current location" t)
(autoload 'orgtbl-mode "org" "org tables as a minor mode" t)
(autoload 'turn-on-orgtbl "org" "org tables as a minor mode")

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-c." 'org-time-stamp)

(global-set-key "\C-cr" 'org-remember)

;; 自动换行
;; (setq org-hide-leading-stars t)
(setq org-enable-table-editor 1)
(setq org-log-done t)
(setq org-log-done '(done))
(setq org-agenda-include-diary t)

(add-hook 'org-mode-hook
          (lambda ()
            (setq truncate-lines nil)
            (smiley-buffer (current-buffer))
            (set-fill-column 70)))

;;capture template
(setq org-directory "~/org/")
(setq org-capture-templates
      '(("t" "TODO" entry (file-headline "~/org/gtd.org.gpg" "tasks")
         "* TODO" %?\n $i\n %a)
        ("j" "JOURNAL" entry (file+datetree "~/org/journal.org.gpg")
         "* %?\nentered on %u\n %i\n %a")
        ("s" "STUDY" entry (file+datetree "~/org/study.org")
         "* %?\nentered on %u\n %i\n %a")
        ("h" "HOME" entry (file+datetree "~/org/home.org")
         "* %?\nentered on %u\n %i\n %a")
        ))

(setq org-agenda-exporter-settings
      '((ps-number-of-columns 1)
        (ps-landscape-mode t)
        (htmlize-output-type 'css)))

(setq org-agenda-custom-commands
      '(
        ("p" "project"
         ((tags "projects")))

        ("h" "office and home lists"
         ((agenda)
          (tags-todo "@Office")
          (tags-todo "@Home")
          (tags-todo "@Why")
          (tags-todo "@Lunchtime")
          (tags-todo "@Computer")
          (tags-todo "@Call")
          ))

        ("d" "daily action list"
         (
          (agenda "" ((org-agenda-ndays 1)
                      (org-agenda-sorting-strategy
                       (quote ((agenda time-up priority-down tag-up) )))
                      (org-deadline-warning-days 0)
                      ))))))

(setq org-todo-keywords
      '((sequence "TODO(t!)" "NEXT(n)" "WAITTING(w)" "SOMEDAY(s)" "|" "DONE(d@/!)" "ABORT(a@/!)")
	))

;;(org-remember-insinuate)
(setq org-remember-templates '(("new" ?n "* %? %t \n %i\n %a" "~/org/inbox.org" )
                               ("task" ?t "** todo %?\n %i\n %a" "~/org/task.org" "tasks")
                               ("calendar" ?c "** todo %?\n %i\n %a" "~/org/task.org" "tasks")
                               ("idea" ?i "** %?\n %i\n %a" "~/org/task.org" "ideas")
                               ("note" ?r "* %?\n %i\n %a" "~/org/note.org" )
                               ("project" ?p "** %?\n %i\n %a" "~/org/project.org" %g) ))

(setq org-default-notes-file (concat org-directory "/inbox.org"))

;;================load "gtd.org.pgp"==================
(defun gtd ()
  (interactive)
  (find-file "~/org/gtd.org.gpg"))

(global-set-key (kbd "C-c g") 'gtd)

(add-hook 'org-agenda-mode-hook 'hl-line-mode)

(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

(setq org-log-done 'time)
(setq org-log-done 'note)
(setq org-use-fast-tag-selection t)


;;-------------------org-mode end----------------------

;;(require 'xcscope)

;;====================================
;;半透明窗口设置
;;====================================
(global-set-key [f12] 'loop-alpha);;全局绑定f12键为功能键
(setq alpha-list '((100 100)(85 50)(75 45)(65 35)(55 25)));;当前和非当前窗口时透明度分别为85、50
(defun loop-alpha()
  (interactive)
  (let ((h (car alpha-list)))
    ((lambda (a ab)
       (set-frame-parameter (selected-frame) 'alpha (list a ab))
       (add-to-list 'default-frame-alist (cons 'alpha (list a ab))))
     (car h)(car (cdr h)))
    (setq alpha-list (cdr (append alpha-list (list h))))))

;; =======================================
;; mew 邮件收发设置
;; =======================================
(add-to-list 'load-path "/usr/share/emacs/site-lisp/mew/")
(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)
(if (boundp 'read-mail-command)
    (setq read-mail-command 'mew))
(autoload 'mew-user-agent-compose "mew" nil t)
(if (boundp 'mail-user-agent)
    (setq mail-user-agent 'mew-user-agent))
(if (fboundp 'define-mail-user-agent)
    (define-mail-user-agent
      'mew-user-agent
      'mew-user-agent-compose
      'mew-draft-send-message
      'mew-draft-kill
      'mew-send-hook))

(setq mew-pop-size 0)
;;(setq mew-use-smtp-auth nil)
(setq mew-pop-delete nil)
(setq toolbar-mail-reader 'mew)
(set-default 'mew-decode-quoted 't)
(setq mew-prog-pgp "gpg")
(setq mew-name "jhsygg")
(setq mew-user "jhsygg")
(setq mew-smtp-user "jhsygg")
(setq mew-mail-domain "126.com")
;;(setq mew-smtp-auth-list nil)
(setq mew-smtp-auth-list '("PLAIN"  "LOGIN"  "CRAM-MD5"))
(setq mew-smtp-server "smtp.126.com")
(setq mew-pop-server "pop.126.com")
(setq mew-pop-user "jhsygg")
(setq mew-pop-auth 'pass)
(setq mew-use-cached-passwd t)
;; (setq mew-nntp-server "nntp.126.com")
;; (setq mew-icon-directory (expand-file-name "mew/etc" dtsite-dir))
(when (boundp 'utf-translate-cjk)
  (setq utf-translate-cjk t)
  (custom-set-variables
   '(utf-translate-cjk t)))
(if (fboundp 'utf-translate-cjk-mode)
    (utf-translate-cjk-mode 1))
(require 'flyspell)
;;----------------mew end---------------------

(put 'upcase-region 'disabled nil)

;;=================matlab set =====================

(add-to-list 'load-path "~/.emacs.d/matlab-emacs")
;;(require 'matlab-load)
(autoload 'matlab-mode "matlab" "enter matlab mode." t)
(setq auto-mode-alist (cons '("//.m//'" . matlab-mode) auto-mode-alist))
(autoload 'matlab-shell "matlab" "interactive matlab mode." t)
(setq matlab-verify-on-save-flag nil) ; turn off auto-verify on save
(defun my-matlab-mode-hook ()
  (setq fill-column 76)) ; where auto-fill should wrap
(add-hook 'matlab-mode-hook 'my-matlab-mode-hook)
(defun my-matlab-shell-mode-hook ()
  '())
(add-hook 'matlab-shell-mode-hook 'my-matlab-shell-mode-hook)
(global-font-lock-mode t)

;;(matlab-mode-hilit)
(autoload 'tlc-mode "tlc" "tlc editing mode" t)
(add-to-list 'auto-mode-alist '("//.tlc$" . tlc-mode))
(setq tlc-indent-function t)

(setq tab-width 8 indent-tabs-mode nil)

(setq-default c-basic-offset 8)

;;==================窗口操作 set=========================

;;关闭当前窗口
(global-set-key (kbd "M-4") 'delete-windows)
;;(global-set-key (kbd "M-4") 'kill-this-buffer)
;;关闭其他窗口，alt+1
(global-set-key (kbd "M-1") 'delete-other-windows)
;;水平分割窗口,alt+2
(global-set-key (kbd "M-2") 'split-window-vertically)
;;垂直分割窗口,alt+3
(global-set-key (kbd "M-3") 'split-window-horizontally)
;;切换到其他窗口
(global-set-key (kbd "M-0") 'other-window)
;;显示缓冲区完整名称
(global-set-key (kbd "M-5") 'display-buffer-name)

;;------------------窗口操作 end-------------------

;;==========键绑定，f1--帮助设置=================

(global-set-key [f1] 'manual-entry)
(global-set-key [C-f1] 'info)

;;==================================
;;将光标改成一个竖线
;;==================================

(require 'cursor-change)
(cursor-change-mode 1)

(require 'php-mode)
(add-hook 'php-mode-user-hook 'turn-on-font-lock)

(require 'stardict)
(global-set-key (kbd "C-c d") 'kid-star-dict)
(defun kid-star-dict ()
  (interactive)
  (let ((begin (point-min))
        (end (point-max)))
    (if mark-active
        (setq begin (region-beginning)
              end (region-end))
      (save-excursion
        (backward-word)
        (mark-word)
        (setq begin (region-beginning)
              end (region-end))))
    (message "searching for %s ..." (buffer-substring begin end))
    (tooltip-show
     (shell-command-to-string
      (concat "sdcv -n "
              (buffer-substring begin end))))))

(setq diary-file "~/diary")
(setq diary-mail-addr "jhsygg@126.com")
(add-hook 'diary-hook 'appt-make-list)


(add-to-list 'load-path "~/.emacs.d/el-get/wcy-swbuff")
(require 'wcy-swbuff)
(global-set-key (kbd "<C-tab>") 'wcy-switch-buffer-forward)
(global-set-key (kbd "<C-s-kp-tab>") 'wcy-switch-buffer-backward)

;;===============
;;easypg 文件加密
;;===============
(require 'epa-file)
(epa-file-enable)

(setq epa-file-encrypt-to nil)
(setenv "GPG_AGENT_INFO" nil)
(setq epa-file-cache-passphrase-for-symmetric-encryption t)
(setq epa-file-inhibit-auto-save nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;=============
;;自动补全括号
;;=============
(defun my-c-mode-auto-pair ()
  (interactive)
  (make-local-variable 'skeleton-pair-alist)
  (setq skeleton-pair-alist '(
                              (?` ?` _ "''")
                              (?\( ? _ " )")
                              (?\[ ? _ " ]")
                              (?{ \n > _ \n ?} >)))
  (setq skeleton-pair t)
  (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "`") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "[") 'skeleton-pair-insert-maybe))
(add-hook 'c-mode-hook 'my-c-mode-auto-pair)
(add-hook 'c++-mode-hook 'my-c-mode-auto-pair)

(autoload 'css-mode "css-mode" "css editing mode" t)
;;(autoload 'htmlize-buffer "htmlize" "htmlize mode" t)

(autoload 'folding-mode "folding" "folding mode" t)
(autoload 'turn-off-folding-mode "folding" "folding mode" t)
(autoload 'turn-on-folding-mode "folding" "folding mode" t)

(setq auto-mode-alist
      ;;将文件模式和文件后缀关联起来
      (append '(("\\.py\\'" . python-mode)
                ("\\.s?html?\\'" . html-helper-mode)
                ("\\.asp\\'" . html-helper-mode)
                ("\\.phtml\\'" . html-helper-mode)
                ("\\.css\\'" . css-mode))
              auto-mode-alist))

;; folding for sgml-mode
(add-hook 'sgml-mode-hook
          '(lambda()
             (hs-minor-mode 1)))
(add-to-list 'hs-special-modes-alist
             '(sgml-mode
               "<!--\\|<[^/>]>\\|<[^/][^>]*[^/]>"
               ""
               "<!--"
               sgml-skip-tag-forward
               nil))

(load "graphviz-dot-mode.el" nil t t)

(global-set-key [(meta ?/)] 'hippie-expand)

(setq hippie-expand-try-functions-list
      '(try-expand-dabbrev
        try-expand-dabbrev-visible
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-all-abbrevs
        try-expand-list
        try-expand-line
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol))

;;php-mode-set配置
;;(add-to-list 'load-path "~/.emacs-lisp")
;;(require 'php-mode)
;;(add-hook 'php-mode-user-hook 'turn-on-font-lock)

;;=============
;;使用el-get
;;=============
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)

;; ===========================
;; auto-complete设置
;; ===========================

(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete/ac-dict")
(ac-config-default)

(setq ac-use-quick-help nil)
(setq ac-auto-start 3) ;; 输入3个字符才开始补全
(global-set-key "\M-/" 'auto-complete)  ;;补全的快捷键，用于需要提前补全
;; show menu 0.8 second later
(setq ac-auto-show-menu 0.8)

;; 选择菜单荐的快捷键
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

;; menu设置成12行
(setq ac-menu-height 12)

;; latex-mode
(add-to-list 'ac-modes 'latex-mode)
(defun ac-latex-mode-setup()
  (setq ac-sources (append '(ac-source-yasnippet) ac-sources)))
(add-hook 'latex-mode-hook 'ac-latex-mode-setup)

;; =======================================================

(add-to-list 'load-path "~/.emacs.d/el-get/wcy-desktop")
(require 'wcy-desktop)

(dolist (command '(yank yank-pop))
  (eval
   `(defadvice ,command (after indent-region activate)
      (and (not current-prefix-arg)
           (member major-mode
                   '(emacs-lisp-mode
                     lisp-mode
                     clojure-mode
                     scheme-mode
                     haskell-mode
                     ruby-mode
                     rspec-mode
                     python-mode
                     c-mode
                     c++-mode
                     objc-mode
		     org-mode
                     latex-mode
                     js-mode
                     plain-tex-mode))
           (let ((mark-even-if-inactive transient-mark-mode))
             (indent-region (region-beginning) (region-end) nil))))))

;;========
;;desktop
;;========
(require 'session)
(add-hook 'after-init-hook 'session-initialize)
(load "desktop")
(desktop-save-mode)

;;==============
;;设置buffer操作
;;==============
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;;============
;;窗口切换
;;============
(require 'tabbar)
(tabbar-mode 1)
(global-set-key (kbd "M-j") 'tabbar-backward-group)
(global-set-key (kbd "M-k") 'tabbar-forward-group)
;; (global-set-key (kbd "M-l") 'tabbar-backward)
;; (global-set-key (kbd "M-n") 'tabbar-forward)


(autoload 'table-insert "table" "wygiwys table editor")

(add-hook 'c-mode-common-hook '(lambda() (require 'xcscope)))


(defun copy-line (&optional arg)
  "save current line into kill-ring without mark the line"
  (interactive "P")
  (let ((beg (line-beginning-position))
        (end (line-end-position arg)))
    (copy-region-as-kill beg end))
  )

(defun copy-word (&optional arg)
  "copy words at point"
  (interactive "P")
  (let ((beg (progn (if (looking-back "[a-zA-Z0-9]" 1) (backward-word 1)) (point)))
        (end (progn (forward-word arg) (point))))
    (copy-region-as-kill beg end))
  )

(defun copy-paragraph (&optional arg)
  "copy paragraphes at point"
  (interactive "P")
  (let ((beg (progn (backward-paragraph 1) (point)))
        (end (progn (forward-paragraph arg) (point))))
    (copy-region-as-kill beg end))
  )

;;============
;; ac-math
;;============
;;(add-to-list 'load-path "~/.emacs.d/el-get/ac-math")
(require 'ac-math)

;;===============================================
;; Multiple Major Modes to coexist in one buffer
;;===============================================
(add-to-list 'load-path "~/.emacs.d/el-get/mmm-mode")
(require 'mmm-mode)

;;===================
;; json
;;===================
;; (add-to-list 'load-path "~/.emacs.d/el-get/json")
;; (require 'json)

(defvar wcy-c/c++-hightligh-included-files-key-map nil)
(if wcy-c/c++-hightligh-included-files-key-map
    nil
  (setq wcy-c/c++-hightligh-included-files-key-map (make-sparse-keymap))
  (define-key wcy-c/c++-hightligh-included-files-key-map (kbd "<RET>") 'find-file-at-point))

(defun wcy-c/c++-hightligh-included-files ()
  (interactive)
  (when (or (eq major-mode 'c-mode)
            (eq major-mode 'c++-mode))
    (save-excursion
      (goto-char (point-min))
      ;; remove all overlay first
      (mapc (lambda (ov) (if (overlay-get ov 'wcy-c/c++-hightligh-included-files)
                             (delete-overlay ov)))
            (overlays-in (point-min) (point-max)))
      (while (re-search-forward "^#include[ \t]+[\"<]\\(.*\\)[\">]" nil t nil
        (let* ((begin  (match-beginning 1))
               (end (match-end 1))
               (ov (make-overlay begin end)))
          (overlay-put ov 'wcy-c/c++-hightligh-included-files t)
          (overlay-put ov 'keymap wcy-c/c++-hightligh-included-files-key-map)
          (overlay-put ov 'face 'underline)))))))
;; 
(setq wcy-c/c++-hightligh-included-files-timer (run-with-idle-timer 4 t 'wcy-c/c++-hightligh-included-files))


;;===================
;; graphviz-dot-mode
;;===================

(add-to-list 'load-path "~/.emacs.d/el-get/graphviz-dot-mode")
(require 'graphviz-dot-mode)

;; (add-to-list auto-mode-alist '("\\.dot$" . graphviz-dot-mode))

;; (autoload 'iimage-mode "iimage" "support inline image minor mode." t)
;; (autoload 'turn-on-iimage-mode "iimage" "turn on inline image minor mode." t)

;; (add-to-list 'load-path "~/.emacs.d/jdee-2.4.1/lisp")
;; (require 'jde)
;; (setq auto-mode-alist
;;       (append '(("\\.java\\'" . jde-mode)) auto-mode-alist))

;; (setq org-export-with-latex-fragments t) 

;; 格式化整个文件函数
(defun indent-whole()
  (interactive)
  (indent-region (point-min) (point-max))
  (message "format successfully"))

;; 绑定到f9  
(global-set-key [f9] 'indent-whole)
(fset 'd2x  "\C-x\h\C-x\C-l")

(global-set-key (kbd "C-c w w") 'w3m)
(put 'dired-find-alternate-file 'disabled nil)


(global-set-key [f6] 'make-frame-command)
(setq gdb-many-windows t)
(require 'gud)
(global-set-key [f8] 'gdb)


;;=======
;; slime
;;=======
(require 'jdp-slime)
(require 'init-common-lisp)
;;(require 'init-slime)

;;=====================================
;;         template
;;=====================================
(auto-insert-mode)  ;;; Adds hook to find-files-hook
(setq auto-insert-directory "~/.emacs.d/mytemplate/") ;;; Or use custom, *NOTE* Trailing slash important
(setq auto-insert-query nil) ;;; If you don't want to be prompted before insertion

(setq auto-insert-alist
      (append '(
		(python-mode . "Template.py")
		(org-mode . "Template.org")
		
		)
	      auto-insert-alist))
;;========================================

;;(load (expand-file-name "~/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")

(add-to-list 'load-path "~/.emacs.d/el-get/git-emacs/")
(require 'git-emacs)

(add-to-list 'load-path "~/.emacs.d/el-get/facebook/")
(require 'facebook)

(global-unset-key (kbd "C-SPC"))
(global-set-key (kbd "S-SPC") 'set-mark-command)

