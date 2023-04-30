;;


(mapc (lambda (mode)
        (add-hook 'LaTeX-mode-hook mode))
      (list 'auto-fill-mode
            'LaTeX-math-mode
            'turn-on-reftex
            'linum-mode))

(add-hook 'LaTeX-mode-hook
          (lambda ()
            (setq TeX-auto-untabify t     ; remove all tabs before saving
                  TeX-engine 'xetex       ; use xelatex default
                  TeX-show-compilation t) ; display compilation windows
            (TeX-global-PDF-mode t)       ; PDF mode enable, not plain
            (setq TeX-save-query nil)
            (imenu-add-menubar-index)
            (define-key LaTeX-mode-map (kbd "TAB") 'TeX-complete-symbol)))

(setq TeX-view-program-list
      '(("Okular" "okular --unique %o")
        ("Evince" "evince %o")
        ("Firefox" "firefox %o")))

(add-to-list 'load-path "~/.emacs.d/plugins")
(add-hook 'org-mode-hook
          (lambda () (setq truncate-lines nil)))

(require 'org-install)
;;(require 'org-latex)

(unless (boundp 'org-export-latex-classes)
  (setq org-export-latex-classes nil))

(setq org-export-latex-listings t)
(add-to-list 'org-export-latex-classes
             '("ctexart"
               "\\documentclass[11pt,a4paper]{ctexart}
\\usepackage[utf8]{inputenc}
\\usepackage{abstract}
\\usepackage[title]{appendix}
\\usepackage{fixltx2e}
\\usepackage{graphicx}
\\usepackage{longtable}
\\usepackage{float}
\\usepackage{wrapfig}
\\usepackage{soul}
\\usepackage{textcomp}
\\usepackage{marvosym}
\\usepackage{wasysym}
\\usepackage{latexsym}
\\usepackage{amssymb}
\\usepackage{bpchem}
\\usepackage{mhchem}
\\usepackage{listings}
\\usepackage{xcolor}
\\usepackage{multirow,array,multicol,indentfirst}
\\usepackage{SIunits,geometry,fancyhdr}
\\usepackage{tikz,pifont,footnote}
\\usepackage[colorlinks,linkcolor=blue,anchorcolor=blue,citecolor=green]{hyperref}
\\geometry{left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm}
\\usepackage{enumerate,comment}
\\usepackage{lastpage}
\\usepackage{layout}
\\newtheorem{thm}{{定理}}
\\newtheorem{proposition}{{命题}}
\\newtheorem{lemma}{{引理}}
\\newtheorem{corollary}{{推论}}
\\newtheorem{definition}{{定义}}
\\newtheorem{rules}{{规则}}
\\newtheorem{suggest}{{建议}}
\\newtheorem{example}{{例}}
\\CTEXsetup[format={\\raggedright}]{section}
\\CTEXsetup[format={\\raggedright}]{subsection}
\\CTEXsetup[format={\\raggedright}]{subsubsection}
\\pagestyle{fancy}
                 [NO-DEFAULT-PACKAGES]
                 [EXTRA]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

;; ctexbook
(add-to-list 'org-export-latex-classes
             '("ctexbook"
               "\\documentclass[11pt,a4paper,twoside,openany]{ctexbook}
\\usepackage[utf8]{inputenc}
\\usepackage{abstract}
\\usepackage[title]{appendix}
\\usepackage{fixltx2e}
\\usepackage{graphicx}
\\usepackage{longtable}
\\usepackage{float}
\\usepackage{wrapfig}
\\usepackage{soul}
\\usepackage{textcomp}
\\usepackage{marvosym}
\\usepackage{wasysym}
\\usepackage{latexsym}
\\usepackage{amssymb}
\\usepackage{bpchem}
\\usepackage{mhchem}
\\usepackage{multirow,array,multicol,indentfirst}
\\usepackage{SIunits,geometry,fancyhdr}
\\usepackage{tikz,pifont,footnote}
\\usepackage[colorlinks,linkcolor=blue,anchorcolor=blue,citecolor=green]{hyperref}
\\geometry{left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm}
\\usepackage{enumerate,comment}
\\usepackage{lastpage}
\\usepackage{layout}
\\CTEXsetup[format={\\raggedright}]{part}
\\CTEXsetup[format={\\raggedright}]{chapter}
\\CTEXsetup[format={\\raggedright}]{section}
\\CTEXsetup[format={\\raggedright}]{subsection}
\\CTEXsetup[format={\\raggedright}]{subsubsection}
\\CTEXsetup[format={\\raggedright}]{paragraph}
\\CTEXsetup[format={\\raggedright}]{subparagraph}
\\pagestyle{fancy}
                 [NO-DEFAULT-PACKAGES]
                 [EXTRA]"
               ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

;;导出Beamer的设置
;; allow for export=>beamer by placing #+LaTeX_CLASS: beamer in org files
;;-----------------------------------------------------------------------------
(add-to-list 'org-export-latex-classes
             ;; beamer class, for presentations
             '("beamer"
               "\\documentclass[professionalfont]{beamer}
\\usepackage[utf8]{ctex,inputenc}
\\usetheme{Warsaw}
\\usepackage{wrapfig}
\\usepackage{graphicx}
\\usepackage{tikz}
\\usepackage{xcolor}
\\usepackage{amsmath}
\\usepackage{lmodern}
\\usepackage{fontspec,xunicode,xltxtra}
\\usepackage{polyglossia}
\\usepackage{verbatim}
\\usepackage{listings}
                 [NO-DEFAULT-PACKAGES]
                 [EXTRA]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\begin{frame}[fragile]\\frametitle{%s}"
                "\\end{frame}"
                "\\begin{frame}[fragile]\\frametitle{%s}"
                "\\end{frame}")))


(setq ps-paper-type 'a4
      ps-font-size 16.0
      ps-print-header nil
      ps-landscape-mode nil)

;;==========================================================================

;;ctexrep 设置

(add-to-list 'org-export-latex-classes
             '("ctexrep"
               "\\documentclass[11pt,a4paper]{ctexrep}
\\usepackage[utf8]{inputenc}
\\usepackage{abstract}
\\usepackage[title]{appendix}
\\usepackage{fixltx2e}
\\usepackage{graphicx}
\\usepackage{longtable}
\\usepackage{float}
\\usepackage{wrapfig}
\\usepackage{soul}
\\usepackage{textcomp}
\\usepackage{marvosym}
\\usepackage{wasysym}
\\usepackage{latexsym}
\\usepackage{amssymb}
\\usepackage{bpchem}
\\usepackage{mhchem}
\\usepackage{listings}
\\usepackage{xcolor}
\\usepackage{multirow,array,multicol,indentfirst}
\\usepackage{SIunits,geometry,fancyhdr}
\\usepackage{tikz,pifont,footnote}
\\usepackage[draft=false,colorlinks=true,linkcolor=black,citecolor=black,urlcolor=blue]{hyperref}
\\usepackage[left=2.5cm,right=2.5cm,top=3cm,bottom=2.5cm]{geometry}
\\usepackage{enumerate,comment}
\\usepackage{lastpage}
\\usepackage{layout}
\\newtheorem{thm}{{定理}}
\\newtheorem{proposition}{{命题}}
\\newtheorem{lemma}{{引理}}
\\newtheorem{corollary}{{推论}}
\\newtheorem{definition}{{定义}}
\\newtheorem{rules}{{规则}}
\\newtheorem{suggest}{{建议}}
\\newtheorem{example}{{例}}
\\CTEXsetup[format={\\raggedright}]{part}
\\CTEXsetup[format={\\raggedright}]{chapter}
\\CTEXsetup[format={\\raggedright}]{section}
\\CTEXsetup[format={\\raggedright}]{subsection}
\\CTEXsetup[format={\\raggedright}]{subsubsection}
\\CTEXsetup[format={\\raggedright}]{paragraph}
\\CTEXsetup[format={\\raggedright}]{subparagraph}
\\pagestyle{fancy}
                 [NO-DEFAULT-PACKAGES]
                 [EXTRA]"
               ("\\chapter{%s}" . "\\chapter*{%s}")

               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

;; ;;使用Listings宏包格式化源代码
;; (setq org-export-latex-listings t)
;; ;; Options for \lset commond(reference to listing Manual)
;; (setq org-export-latex-listings-options
;;       '(
;;      ("basicstyle" "\\color{foreground}\\tiny\\mono") ;源代码字体样式
;;      ("keywordstyle" "\\color{function}\\bfseries\\small\\mono") ;关键词字体样式
;;      ("identifierstyle" "\\color{doc}\\small\\mono")
;;      ("commentstyle" "\\color\\{comment}\\small\\itshape") ;批注样式
;;      ("stringstyle" "\\color{string}\\small") ;字符串样式
;;      ("showstringspaces" "false") ;字符串空格显示
;;      ("numbers" "left") ;显示行号
;;      ("numberstyle" "\\color{preprocess}")  ;行号样式
;;      ("stepnumber" "1") ;行号递增
;;      ("backgroundcolor" "\\color{background")  ;代码框背景色
;;      ("tabsize" "4") ;TAB等效空格数
;;      ("captionpos" "t") ;标题位置top or buttom(t|b)
;;      ("breaklines" "true") ;自动断行
;;      ("breakatwhitespace" "true") ;只在空格分行
;;      ("showspaces" "false") ;显示空格
;;      ("columns" "flexible") ;列样式
;;      ("frame" "single") ;代码框：阴影盒
;;      ("frameround" "tttt") ;代码框：圆角
;;      ("framesep" "0pt")
;;      ("framerule" "8pt")
;;      ("rulecolor" "\\color{background}")
;;      ("fillcolor" "\\color{white}")
;;      ("rulesepcolor" "\\color{comdil}")
;;      ("framexleftmargin" "10mm")
;;      ))

;; ;; Make Org use ido-completing-read for most of its completing prompts.
;; (setq org-completion-use-ido t)
;; ;; 各种Babel语言支持
;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((R . t)
;;    (emacs-lisp . t)
;;    (matlab . t)
;;    (C . t)
;;    (perl . t)
;;    (sh . t)
;;    (ditaa . t)
;;    (python . t)
;;    (haskell . t)
;;    (dot . t)
;;    (latex . t)
;;    (js . t)
;;    ))

(require 'ac-math)

(add-to-list 'ac-modes 'latex-mode)   ; make auto-complete aware of `latex-mode`

(defun ac-latex-mode-setup ()         ; add ac-sources to default ac-sources
  (setq ac-sources
        (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
                ac-sources)))

(add-hook 'latex-mode-hook 'ac-latex-mode-setup)

(provide 'init-latex)
