(setq diary-file "~/diary")
(setq diary-mail-addr "jhsygg@126.com")
(add-hook 'diary-hook 'appt-make-list)

(setq holiday-general-holidays '((holiday-fixed 1 1 "元旦")
				 (holiday-fixed 2 14 "情人节")
				 (holiday-lunar 2 6 "父亲生日" 0)
				 (holiday-fixed 3 14 "白色情人节")
				 (holiday-lunar 3 14 "二妹生日" 0)
				 (holiday-fixed 4 1 "愚人节")
				 (holiday-fixed 5 1 "劳动节")
				 (holiday-float 5 0 2 "母亲节")
				 (holiday-fixed 6 1 "儿童节")
				 (holiday-float 6 0 3 "父亲节")
				 (holiday-lunar 6 7 "母亲生日" 0)
				 (holiday-fixed 7 1 "建党节")
				 (holiday-fixed 8 1 "建军节")
				 (holiday-fixed 9 10 "教师节")
				 (holiday-fixed 10 1 "国庆节")
				 (holiday-fixed 12 25 "圣诞节")
				 (holiday-fixed 9 5 "浩月生日")
				 (holiday-lunar 1 1 "春节(正月初一)" 0)
				 (holiday-lunar 1 2 "春节(正月初二)" 0)
				 (holiday-lunar 1 3 "春节(正月初三)" 0)
				 (holiday-lunar 1 15 "元宵节" 0)
				 (holiday-solar-term "清明" "清明节")
				 (holiday-lunar 5 5 "端午节" 0)
				 (holiday-lunar 8 15 "中秋节" 0)
				 (holiday-lunar 9 9 "重阳节" 0)
				 (holiday-lunar 8 8 "浩月生日" 0)
				 (holiday-lunar 10 28 "浩月婆婆生日" 0)
				 (holiday-lunar 11 29 "我的生日" 0)
				 (holiday-lunar 12 8 "腊八节" 0)
				 (holiday-lunar 12 24 "小年，扫房日" 0)
				 (holiday-lunar 12 30 "除夕，年三十" 0)
				 ))

;; (add-to-list 'load-path "~/.emacs.d/el-get/cal-china-x")
(require 'cal-china-x)

(setq calendar-holidays holiday-general-holidays)

(setq calendar-load-hook
      '(lambda ()
	 (set-face-foreground 'diary-face "skyblue")
	 (set-face-background 'holiday-face "slate blue")
	 (set-face-foreground 'holiday-face "white")))

;;设置我所在地方的经纬度，calendar里有个功能是日月食的预测，和你的经纬度相联系的。
;; 让emacs能计算日出日落的时间，在 calendar 上用 S 即可看到
(setq calendar-latitude +26.61)
(setq calendar-longitude +104.79)
(setq calendar-location-name "六盘水")

;; 设置 calendar 的显示
(setq calendar-remove-frame-by-deleting t)
(setq calendar-week-start-day 1)            ; 设置星期一为每周的第一天
(setq calendar-mark-diary-entries-flag nil)     ; 标记calendar上有diary的日期

;; 去掉不关心的节日，设定自己在意的节日，在 calendar 上用 h 显示节日
(setq holiday-christian-holidays nil)
(setq holiday-hebrew-holidays nil)
(setq holiday-islamic-holidays nil)
(setq holiday-solar-holidays nil)

;;按中国习惯，周一为一周的第一天
(setq calendar-week-start-day 1)    

;;在日历中突出标记节日和生日
(setq calendar-mark-holidays-flag t)

;;打开自动列出节日和生日列表
(setq calendar-view-holidays-initially-flag t)




(provide 'chinese-calendar)
;;; chinese-calendar.el ends here 
