;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "ac-math/ac-math" "ac-math/ac-math.el" (21867
;;;;;;  43583 58021 473000))
;;; Generated autoloads from ac-math/ac-math.el

(defvar ac-source-latex-commands '((candidates . math-symbol-list-latex-commands) (symbol . "c") (prefix . ac-math-prefix)))

(defvar ac-source-math-latex '((candidates . ac-math-candidates-latex) (symbol . "l") (prefix . ac-math-prefix) (action . ac-math-action-latex)))

(defvar ac-source-math-unicode '((candidates . ac-math-candidates-unicode) (symbol . "u") (prefix . ac-math-prefix) (action . ac-math-action-unicode)))

;;;***

;;;### (autoloads nil "ac-slime/ac-slime" "ac-slime/ac-slime.el"
;;;;;;  (23090 32767 727989 877000))
;;; Generated autoloads from ac-slime/ac-slime.el

(defface ac-slime-menu-face '((t (:inherit ac-candidate-face))) "\
Face for slime candidate menu." :group (quote auto-complete))

(defface ac-slime-selection-face '((t (:inherit ac-selection-face))) "\
Face for the slime selected candidate." :group (quote auto-complete))

(defvar ac-source-slime-fuzzy '((init . ac-slime-init) (candidates . ac-source-slime-fuzzy-candidates) (candidate-face . ac-slime-menu-face) (selection-face . ac-slime-selection-face) (prefix . slime-symbol-start-pos) (symbol . "l") (match lambda (prefix candidates) candidates) (document . ac-slime-documentation)) "\
Source for fuzzy slime completion.")

(defvar ac-source-slime-simple '((init . ac-slime-init) (candidates . ac-source-slime-simple-candidates) (candidate-face . ac-slime-menu-face) (selection-face . ac-slime-selection-face) (prefix . slime-symbol-start-pos) (symbol . "l") (document . ac-slime-documentation) (match . ac-source-slime-case-correcting-completions)) "\
Source for slime completion.")

(autoload 'set-up-slime-ac "ac-slime/ac-slime" "\
Add an optionally FUZZY slime completion source to `ac-sources'.

\(fn &optional FUZZY)" t nil)

;;;***

;;;### (autoloads nil "anaconda-mode/anaconda-mode" "anaconda-mode/anaconda-mode.el"
;;;;;;  (23131 22715 39840 634000))
;;; Generated autoloads from anaconda-mode/anaconda-mode.el

(autoload 'anaconda-mode "anaconda-mode/anaconda-mode" "\
Code navigation, documentation lookup and completion for Python.

\\{anaconda-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'anaconda-eldoc-mode "anaconda-mode/anaconda-mode" "\
Toggle echo area display of Python objects at point.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "auctex/bib-cite" "auctex/bib-cite.el" (23133
;;;;;;  64339 283841 889000))
;;; Generated autoloads from auctex/bib-cite.el

(autoload 'bib-cite-minor-mode "auctex/bib-cite" "\
Toggle bib-cite mode.
When bib-cite mode is enabled, citations, labels and refs are highlighted
when the mouse is over them.  Clicking on these highlights with [mouse-2]
runs bib-find, and [mouse-3] runs bib-display.

\(fn ARG)" t nil)

(autoload 'turn-on-bib-cite "auctex/bib-cite" "\
Unconditionally turn on Bib Cite mode.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "auctex/context" "auctex/context.el" (23133
;;;;;;  64339 283841 889000))
;;; Generated autoloads from auctex/context.el

(defalias 'ConTeXt-mode 'context-mode)

(autoload 'context-mode "auctex/context" "\
Major mode in AUCTeX for editing ConTeXt files.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of ConTeXt-mode-hook.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/context-en" "auctex/context-en.el"
;;;;;;  (23090 32770 472707 517000))
;;; Generated autoloads from auctex/context-en.el

(autoload 'context-en-mode "auctex/context-en" "\
Major mode for editing files for ConTeXt using its english interface.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of TeX-mode-hook, and then the value
of context-mode-hook.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/context-nl" "auctex/context-nl.el"
;;;;;;  (23090 32770 472707 517000))
;;; Generated autoloads from auctex/context-nl.el

(autoload 'context-nl-mode "auctex/context-nl" "\
Major mode for editing files for ConTeXt using its dutch interface.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of TeX-mode-hook, and then the value
of context-mode-hook.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/font-latex" "auctex/font-latex.el"
;;;;;;  (23133 64339 286841 888000))
;;; Generated autoloads from auctex/font-latex.el

(autoload 'font-latex-setup "auctex/font-latex" "\
Setup this buffer for LaTeX font-lock.  Usually called from a hook.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "auctex/latex" "auctex/latex.el" (23133 64339
;;;;;;  288841 887000))
;;; Generated autoloads from auctex/latex.el

(autoload 'BibTeX-auto-store "auctex/latex" "\
This function should be called from `bibtex-mode-hook'.
It will setup BibTeX to store keys in an auto file.

\(fn)" nil nil)

(add-to-list 'auto-mode-alist '("\\.drv\\'" . latex-mode))

(add-to-list 'auto-mode-alist '("\\.hva\\'" . latex-mode))

(autoload 'TeX-latex-mode "auctex/latex" "\
Major mode in AUCTeX for editing LaTeX files.
See info under AUCTeX for full documentation.

Special commands:
\\{LaTeX-mode-map}

Entering LaTeX mode calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `LaTeX-mode-hook'.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.dtx\\'" . doctex-mode))

(autoload 'docTeX-mode "auctex/latex" "\
Major mode in AUCTeX for editing .dtx files derived from `LaTeX-mode'.
Runs `LaTeX-mode', sets a few variables and
runs the hooks in `docTeX-mode-hook'.

\(fn)" t nil)

(defalias 'TeX-doctex-mode 'docTeX-mode)

;;;***

;;;### (autoloads nil "auctex/multi-prompt" "auctex/multi-prompt.el"
;;;;;;  (22583 39584 103271 413000))
;;; Generated autoloads from auctex/multi-prompt.el

(autoload 'multi-prompt "auctex/multi-prompt" "\
Completing prompt for a list of strings.  
The first argument SEPARATOR should be the string (of length 1) to
separate the elements in the list.  The second argument UNIQUE should
be non-nil, if each element must be unique.  The remaining elements
are the arguments to `completing-read'.  See that.

\(fn SEPARATOR UNIQUE PROMPT TABLE &optional MP-PREDICATE REQUIRE-MATCH INITIAL HISTORY)" nil nil)

(autoload 'multi-prompt-key-value "auctex/multi-prompt" "\
Read multiple strings, with completion and key=value support.
PROMPT is a string to prompt with, usually ending with a colon
and a space.  TABLE is an alist.  The car of each element should
be a string representing a key and the optional cdr should be a
list with strings to be used as values for the key.

See the documentation for `completing-read' for details on the
other arguments: PREDICATE, REQUIRE-MATCH, INITIAL-INPUT, HIST,
DEF, and INHERIT-INPUT-METHOD.

The return value is the string as entered in the minibuffer.

\(fn PROMPT TABLE &optional PREDICATE REQUIRE-MATCH INITIAL-INPUT HIST DEF INHERIT-INPUT-METHOD)" nil nil)

;;;***

;;;### (autoloads nil "auctex/plain-tex" "auctex/plain-tex.el" (23133
;;;;;;  64339 288841 887000))
;;; Generated autoloads from auctex/plain-tex.el

(autoload 'TeX-plain-tex-mode "auctex/plain-tex" "\
Major mode in AUCTeX for editing plain TeX files.
See info under AUCTeX for documentation.

Special commands:
\\{plain-TeX-mode-map}

Entering `plain-tex-mode' calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `plain-TeX-mode-hook'.

\(fn)" t nil)

(autoload 'ams-tex-mode "auctex/plain-tex" "\
Major mode in AUCTeX for editing AmS-TeX files.
See info under AUCTeX for documentation.

Special commands:
\\{AmSTeX-mode-map}

Entering `ams-tex-mode' calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `AmS-TeX-mode-hook'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/preview" "auctex/preview.el" (23133
;;;;;;  64344 963839 225000))
;;; Generated autoloads from auctex/preview.el

(autoload 'preview-install-styles "auctex/preview" "\
Installs the TeX style files into a permanent location.
This must be in the TeX search path.  If FORCE-OVERWRITE is greater
than 1, files will get overwritten without query, if it is less
than 1 or nil, the operation will fail.  The default of 1 for interactive
use will query.

Similarly FORCE-SAVE can be used for saving
`preview-TeX-style-dir' to record the fact that the uninstalled
files are no longer needed in the search path.

\(fn DIR &optional FORCE-OVERWRITE FORCE-SAVE)" t nil)

(autoload 'LaTeX-preview-setup "auctex/preview" "\
Hook function for embedding the preview package into AUCTeX.
This is called by `LaTeX-mode-hook' and changes AUCTeX variables
to add the preview functionality.

\(fn)" nil nil)

(autoload 'preview-report-bug "auctex/preview" "\
Report a bug in the preview-latex package.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/tex-bar" "auctex/tex-bar.el" (23090
;;;;;;  32770 483706 385000))
;;; Generated autoloads from auctex/tex-bar.el

(autoload 'TeX-install-toolbar "auctex/tex-bar" "\
Install toolbar buttons for TeX mode.

\(fn)" t nil)

(autoload 'LaTeX-install-toolbar "auctex/tex-bar" "\
Install toolbar buttons for LaTeX mode.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/tex-fold" "auctex/tex-fold.el" (23133
;;;;;;  64339 291841 885000))
;;; Generated autoloads from auctex/tex-fold.el
 (autoload 'TeX-fold-mode "tex-fold" "Minor mode for hiding and revealing macros and environments." t)

(defalias 'tex-fold-mode 'TeX-fold-mode)

;;;***

;;;### (autoloads nil "auctex/tex-font" "auctex/tex-font.el" (23133
;;;;;;  64339 291841 885000))
;;; Generated autoloads from auctex/tex-font.el

(autoload 'tex-font-setup "auctex/tex-font" "\
Setup font lock support for TeX.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "auctex/tex-info" "auctex/tex-info.el" (23133
;;;;;;  64339 292841 885000))
;;; Generated autoloads from auctex/tex-info.el

(defalias 'Texinfo-mode 'texinfo-mode)

(autoload 'TeX-texinfo-mode "auctex/tex-info" "\
Major mode in AUCTeX for editing Texinfo files.

Special commands:
\\{Texinfo-mode-map}

Entering Texinfo mode calls the value of `text-mode-hook'  and then the
value of `Texinfo-mode-hook'.

\(fn)" t nil)

;;;***

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

;;;### (autoloads nil "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (22695 46899 235069 89000))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

(autoload 'auto-complete-mode "auto-complete/auto-complete" "\
AutoComplete mode

\(fn &optional ARG)" t nil)

(defvar global-auto-complete-mode nil "\
Non-nil if Global Auto-Complete mode is enabled.
See the `global-auto-complete-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-auto-complete-mode'.")

(custom-autoload 'global-auto-complete-mode "auto-complete/auto-complete" nil)

(autoload 'global-auto-complete-mode "auto-complete/auto-complete" "\
Toggle Auto-Complete mode in all buffers.
With prefix ARG, enable Global Auto-Complete mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Complete mode is enabled in all buffers where
`auto-complete-mode-maybe' would do it.
See `auto-complete-mode' for more information on Auto-Complete mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "auto-complete/auto-complete-config" "auto-complete/auto-complete-config.el"
;;;;;;  (22407 37353 730649 133000))
;;; Generated autoloads from auto-complete/auto-complete-config.el

(autoload 'ac-config-default "auto-complete/auto-complete-config" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "better-defaults/better-defaults" "better-defaults/better-defaults.el"
;;;;;;  (23128 37150 418927 748000))
;;; Generated autoloads from better-defaults/better-defaults.el

(ido-mode t)

(setq ido-enable-flex-matching t)

(menu-bar-mode -1)

(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))

(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(autoload 'zap-up-to-char "misc" "\
Kill up to, but not including ARGth occurrence of CHAR." t)

(require 'uniquify)

(setq uniquify-buffer-name-style 'forward)

(require 'saveplace)

(setq-default save-place t)

(global-set-key (kbd "M-/") 'hippie-expand)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "M-z") 'zap-up-to-char)

(global-set-key (kbd "C-s") 'isearch-forward-regexp)

(global-set-key (kbd "C-r") 'isearch-backward-regexp)

(global-set-key (kbd "C-M-s") 'isearch-forward)

(global-set-key (kbd "C-M-r") 'isearch-backward)

(show-paren-mode 1)

(setq-default indent-tabs-mode nil)

(setq x-select-enable-clipboard t x-select-enable-primary t save-interprogram-paste-before-kill t apropos-do-all t mouse-yank-at-point t require-final-newline t visible-bell t load-prefer-newer t ediff-window-setup-function 'ediff-setup-windows-plain save-place-file (concat user-emacs-directory "places") backup-directory-alist `(("." \, (concat user-emacs-directory "backups"))))

;;;***

;;;### (autoloads nil "cal-china-x/cal-china-x" "cal-china-x/cal-china-x.el"
;;;;;;  (22726 41277 574719 689000))
;;; Generated autoloads from cal-china-x/cal-china-x.el

(autoload 'cal-china-x-birthday-from-chinese "cal-china-x/cal-china-x" "\
Return birthday date this year in Gregorian form.

LUNAR-MONTH and LUNAR-DAY are date number used in chinese lunar
calendar.

\(fn LUNAR-MONTH LUNAR-DAY)" t nil)

(autoload 'holiday-lunar "cal-china-x/cal-china-x" "\
Like `holiday-fixed', but with LUNAR-MONTH and LUNAR-DAY.

When there are multiple days(like Run Yue or 闰月, e.g.,
2006-08-30, which is 07-07 in lunar calendar, the chinese
valentine's day), we use NUM to define which day(s) as
holidays. The rules are:

NUM = 0, only the earlier day.
NUM = 1, only the later day.
NUM with other values(default), all days(maybe one or two).

emacs23 introduces a similar `holiday-chinese', a quick test
shows that it does not recognize Run Yue at all.

\(fn LUNAR-MONTH LUNAR-DAY STRING &optional NUM)" nil nil)

(autoload 'holiday-solar-term "cal-china-x/cal-china-x" "\
A holiday(STR) on SOLAR-TERM day.
See `cal-china-x-solar-term-name' for a list of solar term names .

\(fn SOLAR-TERM STR)" nil nil)

;;;***

;;;### (autoloads nil "clojure-mode/clojure-mode" "clojure-mode/clojure-mode.el"
;;;;;;  (22963 22728 324164 493000))
;;; Generated autoloads from clojure-mode/clojure-mode.el

(autoload 'clojure-mode "clojure-mode/clojure-mode" "\
Major mode for editing Clojure code.

\\{clojure-mode-map}

\(fn)" t nil)

(autoload 'clojure-unwind "clojure-mode/clojure-mode" "\
Unwind thread at point or above point by one level.
Return nil if there are no more levels to unwind.

\(fn)" t nil)

(autoload 'clojure-unwind-all "clojure-mode/clojure-mode" "\
Fully unwind thread at point or above point.

\(fn)" t nil)

(autoload 'clojure-thread "clojure-mode/clojure-mode" "\
Thread by one more level an existing threading macro.

\(fn)" t nil)

(autoload 'clojure-thread-first-all "clojure-mode/clojure-mode" "\
Fully thread the form at point using ->.

When BUT-LAST is non-nil, the last expression is not threaded.
Default value is `clojure-thread-all-but-last'.

\(fn BUT-LAST)" t nil)

(autoload 'clojure-thread-last-all "clojure-mode/clojure-mode" "\
Fully thread the form at point using ->>.

When BUT-LAST is non-nil, the last expression is not threaded.
Default value is `clojure-thread-all-but-last'.

\(fn BUT-LAST)" t nil)

(autoload 'clojure-cycle-privacy "clojure-mode/clojure-mode" "\
Make public the current private def, or vice-versa.
See: https://github.com/clojure-emacs/clj-refactor.el/wiki/cljr-cycle-privacy

\(fn)" t nil)

(autoload 'clojure-convert-collection-to-list "clojure-mode/clojure-mode" "\
Convert collection at (point) to list.

\(fn)" t nil)

(autoload 'clojure-convert-collection-to-quoted-list "clojure-mode/clojure-mode" "\
Convert collection at (point) to quoted list.

\(fn)" t nil)

(autoload 'clojure-convert-collection-to-map "clojure-mode/clojure-mode" "\
Convert collection at (point) to map.

\(fn)" t nil)

(autoload 'clojure-convert-collection-to-vector "clojure-mode/clojure-mode" "\
Convert collection at (point) to vector.

\(fn)" t nil)

(autoload 'clojure-convert-collection-to-set "clojure-mode/clojure-mode" "\
Convert collection at (point) to set.

\(fn)" t nil)

(autoload 'clojure-cycle-if "clojure-mode/clojure-mode" "\
Change a surrounding if to if-not, or vice-versa.

See: https://github.com/clojure-emacs/clj-refactor.el/wiki/cljr-cycle-if

\(fn)" t nil)

(autoload 'clojure-cycle-when "clojure-mode/clojure-mode" "\
Change a surrounding when to when-not, or vice-versa.

\(fn)" t nil)

(autoload 'clojure-let-backward-slurp-sexp "clojure-mode/clojure-mode" "\
Slurp the s-expression before the let form into the let form.
With a numberic prefix argument slurp the previous N s-expression into the let form.

\(fn &optional N)" t nil)

(autoload 'clojure-let-forward-slurp-sexp "clojure-mode/clojure-mode" "\
Slurp the next s-expression after the let form into the let form.
With a numeric prefix argument slurp the next N s-expressions into the let form.

\(fn &optional N)" t nil)

(autoload 'clojure-introduce-let "clojure-mode/clojure-mode" "\
Create a let form, binding the form at point.
With a numeric prefix argument the let is introduced N lists up.

\(fn &optional N)" t nil)

(autoload 'clojure-move-to-let "clojure-mode/clojure-mode" "\
Move the form at point to a binding in the nearest let.

\(fn)" t nil)

(autoload 'clojurescript-mode "clojure-mode/clojure-mode" "\
Major mode for editing ClojureScript code.

\\{clojurescript-mode-map}

\(fn)" t nil)

(autoload 'clojurec-mode "clojure-mode/clojure-mode" "\
Major mode for editing ClojureC code.

\\{clojurec-mode-map}

\(fn)" t nil)

(autoload 'clojurex-mode "clojure-mode/clojure-mode" "\
Major mode for editing ClojureX code.

\\{clojurex-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(clj\\|dtm\\|edn\\)\\'" . clojure-mode))

(add-to-list 'auto-mode-alist '("\\.cljc\\'" . clojurec-mode))

(add-to-list 'auto-mode-alist '("\\.cljx\\'" . clojurex-mode))

(add-to-list 'auto-mode-alist '("\\.cljs\\'" . clojurescript-mode))

(add-to-list 'auto-mode-alist '("\\(?:build\\|profile\\)\\.boot\\'" . clojure-mode))

;;;***

;;;### (autoloads nil "company-jedi/company-jedi" "company-jedi/company-jedi.el"
;;;;;;  (23128 30914 418288 731000))
;;; Generated autoloads from company-jedi/company-jedi.el

(autoload 'company-jedi "company-jedi/company-jedi" "\
`company-mode' completion back-end for `jedi-code.el'.
Provide completion info according to COMMAND and ARG.  IGNORED, not used.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company" "company-mode/company.el"
;;;;;;  (23128 30838 324192 596000))
;;; Generated autoloads from company-mode/company.el

(autoload 'company-mode "company-mode/company" "\
\"complete anything\"; is an in-buffer completion framework.
Completion starts automatically, depending on the values
`company-idle-delay' and `company-minimum-prefix-length'.

Completion can be controlled with the commands:
`company-complete-common', `company-complete-selection', `company-complete',
`company-select-next', `company-select-previous'.  If these commands are
called before `company-idle-delay', completion will also start.

Completions can be searched with `company-search-candidates' or
`company-filter-candidates'.  These can be used while completion is
inactive, as well.

The completion data is retrieved using `company-backends' and displayed
using `company-frontends'.  If you want to start a specific backend, call
it interactively or use `company-begin-backend'.

By default, the completions list is sorted alphabetically, unless the
backend chooses otherwise, or `company-transformers' changes it later.

regular keymap (`company-mode-map'):

\\{company-mode-map}
keymap during active completions (`company-active-map'):

\\{company-active-map}

\(fn &optional ARG)" t nil)

(defvar global-company-mode nil "\
Non-nil if Global Company mode is enabled.
See the `global-company-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-company-mode'.")

(custom-autoload 'global-company-mode "company-mode/company" nil)

(autoload 'global-company-mode "company-mode/company" "\
Toggle Company mode in all buffers.
With prefix ARG, enable Global Company mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Company mode is enabled in all buffers where
`company-mode-on' would do it.
See `company-mode' for more information on Company mode.

\(fn &optional ARG)" t nil)

(autoload 'company-manual-begin "company-mode/company" "\


\(fn)" t nil)

(autoload 'company-complete "company-mode/company" "\
Insert the common part of all candidates or the current selection.
The first time this is called, the common part is inserted, the second
time, or when the selection has been changed, the selected candidate is
inserted.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-abbrev" "company-mode/company-abbrev.el"
;;;;;;  (23128 30838 320192 591000))
;;; Generated autoloads from company-mode/company-abbrev.el

(autoload 'company-abbrev "company-mode/company-abbrev" "\
`company-mode' completion backend for abbrev.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-bbdb" "company-mode/company-bbdb.el"
;;;;;;  (23128 30838 320192 591000))
;;; Generated autoloads from company-mode/company-bbdb.el

(autoload 'company-bbdb "company-mode/company-bbdb" "\
`company-mode' completion backend for BBDB.

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-css" "company-mode/company-css.el"
;;;;;;  (23128 30838 321192 592000))
;;; Generated autoloads from company-mode/company-css.el

(autoload 'company-css "company-mode/company-css" "\
`company-mode' completion backend for `css-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-dabbrev" "company-mode/company-dabbrev.el"
;;;;;;  (23128 30838 321192 592000))
;;; Generated autoloads from company-mode/company-dabbrev.el

(autoload 'company-dabbrev "company-mode/company-dabbrev" "\
dabbrev-like `company-mode' completion backend.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-dabbrev-code" "company-mode/company-dabbrev-code.el"
;;;;;;  (23128 30838 321192 592000))
;;; Generated autoloads from company-mode/company-dabbrev-code.el

(autoload 'company-dabbrev-code "company-mode/company-dabbrev-code" "\
dabbrev-like `company-mode' backend for code.
The backend looks for all symbols in the current buffer that aren't in
comments or strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-elisp" "company-mode/company-elisp.el"
;;;;;;  (23128 30838 321192 592000))
;;; Generated autoloads from company-mode/company-elisp.el

(autoload 'company-elisp "company-mode/company-elisp" "\
`company-mode' completion backend for Emacs Lisp.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-etags" "company-mode/company-etags.el"
;;;;;;  (23128 30838 321192 592000))
;;; Generated autoloads from company-mode/company-etags.el

(autoload 'company-etags "company-mode/company-etags" "\
`company-mode' completion backend for etags.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-files" "company-mode/company-files.el"
;;;;;;  (23128 30838 321192 592000))
;;; Generated autoloads from company-mode/company-files.el

(autoload 'company-files "company-mode/company-files" "\
`company-mode' completion backend existing file names.
Completions works for proper absolute and relative files paths.
File paths with spaces are only supported inside strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-gtags" "company-mode/company-gtags.el"
;;;;;;  (23128 30838 322192 594000))
;;; Generated autoloads from company-mode/company-gtags.el

(autoload 'company-gtags "company-mode/company-gtags" "\
`company-mode' completion backend for GNU Global.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-ispell" "company-mode/company-ispell.el"
;;;;;;  (23128 30838 322192 594000))
;;; Generated autoloads from company-mode/company-ispell.el

(autoload 'company-ispell "company-mode/company-ispell" "\
`company-mode' completion backend using Ispell.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-keywords" "company-mode/company-keywords.el"
;;;;;;  (23128 30838 322192 594000))
;;; Generated autoloads from company-mode/company-keywords.el

(autoload 'company-keywords "company-mode/company-keywords" "\
`company-mode' backend for programming language keywords.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-nxml" "company-mode/company-nxml.el"
;;;;;;  (23128 30838 322192 594000))
;;; Generated autoloads from company-mode/company-nxml.el

(autoload 'company-nxml "company-mode/company-nxml" "\
`company-mode' completion backend for `nxml-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-oddmuse" "company-mode/company-oddmuse.el"
;;;;;;  (23128 30838 322192 594000))
;;; Generated autoloads from company-mode/company-oddmuse.el

(autoload 'company-oddmuse "company-mode/company-oddmuse" "\
`company-mode' completion backend for `oddmuse-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-semantic" "company-mode/company-semantic.el"
;;;;;;  (23128 30838 322192 594000))
;;; Generated autoloads from company-mode/company-semantic.el

(autoload 'company-semantic "company-mode/company-semantic" "\
`company-mode' completion backend using CEDET Semantic.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-tempo" "company-mode/company-tempo.el"
;;;;;;  (23128 30838 322192 594000))
;;; Generated autoloads from company-mode/company-tempo.el

(autoload 'company-tempo "company-mode/company-tempo" "\
`company-mode' completion backend for tempo.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-tng" "company-mode/company-tng.el"
;;;;;;  (23128 30838 323192 595000))
;;; Generated autoloads from company-mode/company-tng.el

(autoload 'company-tng-frontend "company-mode/company-tng" "\
When the user changes the selection at least once, this
frontend will display the candidate in the buffer as if it's
already there and any key outside of `company-active-map' will
confirm the selection and finish the completion.

\(fn COMMAND)" nil nil)

(autoload 'company-tng-configure-default "company-mode/company-tng" "\
Applies the default configuration to enable company-tng.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "company-mode/company-xcode" "company-mode/company-xcode.el"
;;;;;;  (23128 30838 323192 595000))
;;; Generated autoloads from company-mode/company-xcode.el

(autoload 'company-xcode "company-mode/company-xcode" "\
`company-mode' completion backend for Xcode projects.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-yasnippet" "company-mode/company-yasnippet.el"
;;;;;;  (23128 30838 323192 595000))
;;; Generated autoloads from company-mode/company-yasnippet.el

(autoload 'company-yasnippet "company-mode/company-yasnippet" "\
`company-mode' backend for `yasnippet'.

This backend should be used with care, because as long as there are
snippets defined for the current major mode, this backend will always
shadow backends that come after it.  Recommended usages:

* In a buffer-local value of `company-backends', grouped with a backend or
  several that provide actual text completions.

  (add-hook 'js-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends)
                   '((company-dabbrev-code company-yasnippet)))))

* After keyword `:with', grouped with other backends.

  (push '(company-semantic :with company-yasnippet) company-backends)

* Not in `company-backends', just bound to a key.

  (global-set-key (kbd \"C-c y\") 'company-yasnippet)

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-company" "ein/lisp/ein-company.el"
;;;;;;  (23138 44986 193473 743000))
;;; Generated autoloads from ein/lisp/ein-company.el

(autoload 'ein:company-backend "ein/lisp/ein-company" "\


\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-connect" "ein/lisp/ein-connect.el"
;;;;;;  (23138 44986 194473 746000))
;;; Generated autoloads from ein/lisp/ein-connect.el

(autoload 'ein:connect-to-notebook-command "ein/lisp/ein-connect" "\
Connect to notebook.  When the prefix argument is given,
you can choose any notebook on your server including the ones
not yet opened.  Otherwise, already chose from already opened
notebooks.

\(fn &optional NOT-YET-OPENED)" t nil)

(autoload 'ein:connect-to-notebook "ein/lisp/ein-connect" "\
Connect any buffer to notebook and its kernel.

\(fn NBPATH &optional BUFFER NO-RECONNECTION)" t nil)

(autoload 'ein:connect-to-notebook-buffer "ein/lisp/ein-connect" "\
Connect any buffer to opened notebook and its kernel.

\(fn BUFFER-OR-NAME)" t nil)

(autoload 'ein:connect-buffer-to-notebook "ein/lisp/ein-connect" "\
Connect BUFFER to NOTEBOOK.

\(fn NOTEBOOK &optional BUFFER NO-RECONNECTION)" nil nil)

(autoload 'ein:connect-to-default-notebook "ein/lisp/ein-connect" "\
Connect to the default notebook specified by
`ein:connect-default-notebook'.  Set this to `python-mode-hook'
to automatically connect any python-mode buffer to the
notebook.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-console" "ein/lisp/ein-console.el"
;;;;;;  (23138 44986 194473 746000))
;;; Generated autoloads from ein/lisp/ein-console.el

(autoload 'ein:console-open "ein/lisp/ein-console" "\
Open IPython console.
To use this function, `ein:console-security-dir' and
`ein:console-args' must be set properly.
This function works best with the new python.el_ which is shipped
with Emacs 24.2 or later.  If you don't have it, this function
opens a \"plain\" command line interpreter (comint) buffer where
you cannot use fancy stuff such as TAB completion.
It should be possible to support python-mode.el.  Patches are welcome!

.. _python.el: https://github.com/fgallina/python.el

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-dev" "ein/lisp/ein-dev.el" (23138
;;;;;;  44986 195473 749000))
;;; Generated autoloads from ein/lisp/ein-dev.el

(autoload 'ein:dev-insert-mode-map "ein/lisp/ein-dev" "\
Insert mode-map into rst document.  For README.rst.

\(fn MAP-STRING)" nil nil)

(autoload 'ein:dev-start-debug "ein/lisp/ein-dev" "\
Enable EIN debugging support.
When the prefix argument is given, debugging support for websocket
callback (`websocket-callback-debug-on-error') is enabled.

\(fn &optional WS-CALLBACK)" t nil)

(autoload 'ein:dev-stop-debug "ein/lisp/ein-dev" "\
Disable debugging support enabled by `ein:dev-start-debug'.

\(fn)" t nil)

(autoload 'ein:dev-bug-report-template "ein/lisp/ein-dev" "\
Open a buffer with bug report template.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-helm" "ein/lisp/ein-helm.el"
;;;;;;  (23138 44986 195473 749000))
;;; Generated autoloads from ein/lisp/ein-helm.el

(autoload 'anything-ein-kernel-history "ein/lisp/ein-helm" "\
Search kernel execution history then insert the selected one.

\(fn)" t nil)

(autoload 'helm-ein-kernel-history "ein/lisp/ein-helm" "\
Search kernel execution history then insert the selected one.

\(fn)" t nil)

(autoload 'anything-ein-notebook-buffers "ein/lisp/ein-helm" "\
Choose opened notebook using anything.el interface.

\(fn)" t nil)

(autoload 'helm-ein-notebook-buffers "ein/lisp/ein-helm" "\
Choose opened notebook using helm interface.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-iexec" "ein/lisp/ein-iexec.el"
;;;;;;  (23138 44986 195473 749000))
;;; Generated autoloads from ein/lisp/ein-iexec.el

(autoload 'ein:iexec-mode "ein/lisp/ein-iexec" "\
Instant cell execution minor mode.
Code cell at point will be automatically executed after any
change in its input area.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-inspector" "ein/lisp/ein-inspector.el"
;;;;;;  (23138 44986 195473 749000))
;;; Generated autoloads from ein/lisp/ein-inspector.el

(autoload 'ein:inspect-object "ein/lisp/ein-inspector" "\


\(fn KERNEL OBJECT)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-ipynb-mode" "ein/lisp/ein-ipynb-mode.el"
;;;;;;  (23138 44986 195473 749000))
;;; Generated autoloads from ein/lisp/ein-ipynb-mode.el

(autoload 'ein:ipynb-mode "ein/lisp/ein-ipynb-mode" "\
A simple mode for ipynb file.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '(".*\\.ipynb\\'" . ein:ipynb-mode))

;;;***

;;;### (autoloads nil "ein/lisp/ein-jedi" "ein/lisp/ein-jedi.el"
;;;;;;  (23138 44986 195473 749000))
;;; Generated autoloads from ein/lisp/ein-jedi.el

(autoload 'ein:jedi-complete "ein/lisp/ein-jedi" "\
Run completion using candidates calculated by EIN and Jedi.

\(fn &key (expand ac-expand-on-auto-complete))" t nil)

(autoload 'ein:jedi-dot-complete "ein/lisp/ein-jedi" "\
Insert \".\" and run `ein:jedi-complete'.

\(fn)" t nil)

(autoload 'ein:jedi-setup "ein/lisp/ein-jedi" "\
Setup auto-completion using EIN and Jedi.el_ together.

Jedi.el_ is a Python auto-completion library for Emacs.
To use EIN and Jedi together, add the following in your Emacs setup before loading EIN.::

  (setq ein:completion-backend 'ein:use-ac-jedi-backend)

.. _Jedi.el: https://github.com/tkf/emacs-jedi

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-junk" "ein/lisp/ein-junk.el"
;;;;;;  (23138 44986 196473 752000))
;;; Generated autoloads from ein/lisp/ein-junk.el

(autoload 'ein:junk-new "ein/lisp/ein-junk" "\
Open a notebook to try random thing.
Notebook name is determined based on
`ein:junk-notebook-name-template'.

When prefix argument is given, it asks URL or port to use.

\(fn NAME KERNELSPEC URL-OR-PORT)" t nil)

(autoload 'ein:junk-rename "ein/lisp/ein-junk" "\
Rename the current notebook based on `ein:junk-notebook-name-template'
and save it immediately.

\(fn NAME)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-jupyter" "ein/lisp/ein-jupyter.el"
;;;;;;  (23138 44986 196473 752000))
;;; Generated autoloads from ein/lisp/ein-jupyter.el

(autoload 'ein:jupyter-server-login-and-open "ein/lisp/ein-jupyter" "\
Log in and open a notebooklist buffer for a running jupyter notebook server.

Determine if there is a running jupyter server (started via a
call to `ein:jupyter-server-start') and then try to guess if
token authentication is enabled. If a token is found use it to generate a
call to `ein:notebooklist-login' and once authenticated open the notebooklist buffer
via a call to `ein:notebooklist-open'.

\(fn)" t nil)

(autoload 'ein:jupyter-server-start "ein/lisp/ein-jupyter" "\
Start the jupyter notebook server at the given path.

This command opens an asynchronous process running the jupyter
notebook server and then tries to detect the url and token to
generate automatic calls to `ein:notebooklist-login' and
`ein:notebooklist-open'.

With \\[universal-argument] prefix arg, it will prompt the user for the path to
the jupyter executable first. Else, it will try to use the
value of `*ein:last-jupyter-command*' or the value of the
customizable variable `ein:jupyter-default-server-command'.

Then it prompts the user for the path of the root directory
containing the notebooks the user wants to access.

The buffer named by `ein:jupyter-server-buffer-name' will contain
the log of the running jupyter server.

\(fn SERVER-CMD-PATH NOTEBOOK-DIRECTORY &optional NO-LOGIN-AFTER-START-P)" t nil)

(autoload 'ein:jupyter-server-stop "ein/lisp/ein-jupyter" "\
Stop a running jupyter notebook server.

Use this command to stop a running jupyter notebook server. If
there is no running server then no action will be taken.

\(fn &optional FORCE)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-jupyterhub" "ein/lisp/ein-jupyterhub.el"
;;;;;;  (23138 44986 196473 752000))
;;; Generated autoloads from ein/lisp/ein-jupyterhub.el

(autoload 'ein:jupyterhub-connect "ein/lisp/ein-jupyterhub" "\
Log on to a jupyterhub server using PAM authentication. Requires jupyterhub version 0.8 or greater.

\(fn URL USER PASSWORD)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-kernel" "ein/lisp/ein-kernel.el"
;;;;;;  (23138 44986 196473 752000))
;;; Generated autoloads from ein/lisp/ein-kernel.el

(defalias 'ein:kernel-url-or-port 'ein:$kernel-url-or-port)

(defalias 'ein:kernel-id 'ein:$kernel-kernel-id)

;;;***

;;;### (autoloads nil "ein/lisp/ein-multilang" "ein/lisp/ein-multilang.el"
;;;;;;  (23138 44986 197473 755000))
;;; Generated autoloads from ein/lisp/ein-multilang.el

(autoload 'ein:notebook-multilang-mode "ein/lisp/ein-multilang" "\
Notebook mode with multiple language fontification.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-notebook" "ein/lisp/ein-notebook.el"
;;;;;;  (23138 44986 198473 758000))
;;; Generated autoloads from ein/lisp/ein-notebook.el

(defalias 'ein:notebook-name 'ein:$notebook-notebook-name)

;;;***

;;;### (autoloads nil "ein/lisp/ein-notebooklist" "ein/lisp/ein-notebooklist.el"
;;;;;;  (23138 44986 198473 758000))
;;; Generated autoloads from ein/lisp/ein-notebooklist.el

(autoload 'ein:notebooklist-open "ein/lisp/ein-notebooklist" "\
Open notebook list buffer.

\(fn &optional URL-OR-PORT PATH NO-POPUP)" t nil)

(autoload 'ein:notebooklist-enable-keepalive "ein/lisp/ein-notebooklist" "\
Enable periodic calls to the notebook server to keep long running sessions from expiring.
By long running we mean sessions to last days, or weeks. The
frequency of the refresh (which is very similar to a call to
`ein:notebooklist-open`) is controlled by
`ein:notebooklist-keepalive-refresh-time`, and is measured in
terms of hours. If `ein:enable-keepalive' is non-nil this will
automatically be called during calls to `ein:notebooklist-open`.

\(fn &optional URL-OR-PORT)" t nil)

(autoload 'ein:notebooklist-disable-keepalive "ein/lisp/ein-notebooklist" "\
Disable the notebooklist keepalive calls to the jupyter notebook server.

\(fn)" t nil)

(autoload 'ein:notebooklist-reload "ein/lisp/ein-notebooklist" "\
Reload current Notebook list.

\(fn &optional NOTEBOOKLIST)" t nil)

(autoload 'ein:notebooklist-upload-file "ein/lisp/ein-notebooklist" "\


\(fn UPLOAD-PATH)" t nil)

(autoload 'ein:notebooklist-new-notebook "ein/lisp/ein-notebooklist" "\
Ask server to create a new notebook and open it in a new buffer.

\(fn &optional URL-OR-PORT KERNELSPEC PATH CALLBACK CBARGS)" t nil)

(autoload 'ein:notebooklist-new-notebook-with-name "ein/lisp/ein-notebooklist" "\
Open new notebook and rename the notebook.

\(fn NAME KERNELSPEC URL-OR-PORT &optional PATH)" t nil)

(autoload 'ein:notebooklist-list-notebooks "ein/lisp/ein-notebooklist" "\
Return a list of notebook path (NBPATH).  Each element NBPATH
is a string of the format \"URL-OR-PORT/NOTEBOOK-NAME\".

\(fn)" nil nil)

(autoload 'ein:notebooklist-open-notebook-global "ein/lisp/ein-notebooklist" "\
Choose notebook from all opened notebook list and open it.
Notebook is specified by a string NBPATH whose format is
\"URL-OR-PORT/NOTEBOOK-NAME\".

When used in lisp, CALLBACK and CBARGS are passed to `ein:notebook-open'.

\(fn NBPATH &optional CALLBACK CBARGS)" t nil)

(autoload 'ein:notebooklist-load "ein/lisp/ein-notebooklist" "\
Load notebook list but do not pop-up the notebook list buffer.

For example, if you want to load notebook list when Emacs starts,
add this in the Emacs initialization file::

  (add-to-hook 'after-init-hook 'ein:notebooklist-load)

or even this (if you want fast Emacs start-up)::

  ;; load notebook list if Emacs is idle for 3 sec after start-up
  (run-with-idle-timer 3 nil #'ein:notebooklist-load)

You should setup `ein:url-or-port' or `ein:default-url-or-port'
in order to make this code work.

See also:
`ein:connect-to-default-notebook', `ein:connect-default-notebook'.

\(fn &optional URL-OR-PORT)" nil nil)

(autoload 'ein:notebooklist-login "ein/lisp/ein-notebooklist" "\
Login to IPython notebook server.

\(fn URL-OR-PORT PASSWORD &optional RETRY-P)" t nil)

(autoload 'ein:notebooklist-change-url-port "ein/lisp/ein-notebooklist" "\
Update the ipython/jupyter notebook server URL for all the
notebooks currently opened from the current notebooklist buffer.

This function works by calling `ein:notebook-update-url-or-port'
on all the notebooks opened from the current notebooklist.

\(fn NEW-URL-OR-PORT)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-org" "ein/lisp/ein-org.el" (23138
;;;;;;  44986 198473 758000))
;;; Generated autoloads from ein/lisp/ein-org.el

(autoload 'ein:org-open "ein/lisp/ein-org" "\
Open IPython notebook specified by LINK-PATH.
This function is to be used for FOLLOW function of
`org-add-link-type'.

\(fn LINK-PATH)" nil nil)

(autoload 'ein:org-store-link "ein/lisp/ein-org" "\
Call `org-store-link-props' when in notebook buffer.
This function is to be used for `org-store-link-functions'.

Examples::

  ipynb:(:url-or-port 8888 :name \"My_Notebook\")
  ipynb:(:url-or-port \"http://notebook-server\" :name \"My_Notebook\")

Note that spaces will be escaped in org files.

As how IPython development team supports multiple directory in
IPython notebook server is unclear, it is not easy to decide the
format for notebook links.  Current approach is to use
S-expression based (rather verbose) serialization, so that
extending link spec without loosing backward compatibility is
easier.  For the examples of link format in general, see Info
node `(org) External links' and Info node `(org) Search options'

\(fn)" nil nil)

(eval-after-load "org" '(if (fboundp 'org-link-set-parameters) (org-link-set-parameters "ipynb" :follow 'ein:org-open :help-echo "Open ipython notebook." :store 'ein:org-store-link) (org-add-link-type "ipynb" :follow 'ein:org-open) (add-hook 'org-store-link-functions 'ein:org-store-link)))

;;;***

;;;### (autoloads nil "ein/lisp/ein-pseudo-console" "ein/lisp/ein-pseudo-console.el"
;;;;;;  (23138 44986 198473 758000))
;;; Generated autoloads from ein/lisp/ein-pseudo-console.el

(autoload 'ein:pseudo-console-mode "ein/lisp/ein-pseudo-console" "\
Pseudo console mode.  Hit RET to execute code.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-shared-output" "ein/lisp/ein-shared-output.el"
;;;;;;  (23138 44986 199473 761000))
;;; Generated autoloads from ein/lisp/ein-shared-output.el

(autoload 'ein:shared-output-pop-to-buffer "ein/lisp/ein-shared-output" "\
Open shared output buffer.

\(fn)" t nil)

(autoload 'ein:shared-output-show-code-cell-at-point "ein/lisp/ein-shared-output" "\
Show code cell at point in shared-output buffer.
It is useful when the output of the cell at point is truncated.
See also `ein:cell-max-num-outputs'.

\(fn)" t nil)

(autoload 'ein:shared-output-eval-string "ein/lisp/ein-shared-output" "\
Evaluate a piece of code.  Prompt will appear asking the code to run.
This is handy when you want to execute something quickly without
making a cell.  If the code outputs something, it will go to the
shared output buffer.  You can open the buffer by the command
`ein:shared-output-pop-to-buffer'.

.. ARGS is passed to `ein:kernel-execute'.  Unlike `ein:kernel-execute',
   `:silent' is `nil' by default.

\(fn CODE &optional POPUP VERBOSE KERNEL &rest ARGS)" t nil)

;;;***

;;;### (autoloads nil "ein/lisp/ein-traceback" "ein/lisp/ein-traceback.el"
;;;;;;  (23138 44986 200473 764000))
;;; Generated autoloads from ein/lisp/ein-traceback.el

(autoload 'ein:tb-show "ein/lisp/ein-traceback" "\
Show full traceback in traceback viewer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get" "el-get/el-get.el" (22250 45389
;;;;;;  32273 23000))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-install "el-get/el-get" "\
Cause the named PACKAGE to be installed after all of its
dependencies (if any).

PACKAGE may be either a string or the corresponding symbol.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update "el-get/el-get" "\
Update PACKAGE.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-remove "el-get/el-get" "\
Remove any PACKAGE that is know to be installed or required.

\(fn PACKAGE)" t nil)

(autoload 'el-get-reinstall "el-get/el-get" "\
Remove PACKAGE and then install it again.

\(fn PACKAGE)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE)" t nil)

(autoload 'el-get-self-checksum "el-get/el-get" "\
Compute the checksum of the running version of el-get itself.

Also put the checksum in the kill-ring.

\(fn)" t nil)

(autoload 'el-get "el-get/el-get" "\
Ensure that packages have been downloaded once and init them as needed.

This will not update the sources by using `apt-get install' or
`git pull', but it will ensure that:

* the packages have been installed
* load-path is set so their elisp files can be found
* Info-directory-list is set so their info files can be found
* Autoloads have been prepared and evaluated for each package
* Any post-installation setup (e.g. `(require 'feature)') happens

When SYNC is nil (the default), all installations run
concurrently, in the background.

When SYNC is 'sync, each package will be installed synchronously,
and any error will stop it all.

Please note that the `el-get-init' part of `el-get' is always
done synchronously. There's `byte-compile' support though, and
the packages you use are welcome to use `autoload' too.

PACKAGES is expected to be a list of packages you want to install
or init.  When PACKAGES is omited (the default), the list of
already installed packages is considered.

\(fn &optional SYNC &rest PACKAGES)" nil nil)

;;;***

;;;### (autoloads nil "el-get/el-get-bundle" "el-get/el-get-bundle.el"
;;;;;;  (22250 45389 29273 21000))
;;; Generated autoloads from el-get/el-get-bundle.el

(autoload 'el-get-bundle-el-get "el-get/el-get-bundle" "\


\(fn SRC)" nil nil)

(autoload 'el-get-bundle "el-get/el-get-bundle" "\
Install PACKAGE and run initialization FORM.

PACKAGE can be either a simple package name or a package name
with a modifier before the name to specify local recipe source
information:

* `<owner>/' : specifies a Github owner name
* `gist:<id>' : specifies a Gist ID
* `<type>:' : specifies a type of the package source

If `FEATURE in PACKAGE' form is used instead of PACKAGE, then
that FEATURE is `require'd after installing PACKAGE.  You can
also use `el-get-bundle!' macro if FEATURE and PACKAGE are the
same.  If you wish to `require' more than one feature, then use
`:features' property in FORM.

The initialization FORM may start with a property list that
describes a local recipe.  The FORM after the property list is
treated as initialization code, which is actually an `:after'
property of the local recipe.

A copy of the initialization code is stored in a directory
specified by `el-get-bundle-init-directory' and its byte-compiled
version is used if `el-get-bundle-byte-compile' is non-nil.

\(fn PACKAGE &rest FORM)" nil t)

(put 'el-get-bundle 'lisp-indent-function 'defun)

(autoload 'el-get-bundle! "el-get/el-get-bundle" "\
Install PACKAGE and run initialization form.
It is the same as `el-get-bundle' except that PACKAGE is explicitly
required.

\(fn PACKAGE &rest ARGS)" nil t)

(put 'el-get-bundle! 'lisp-indent-function 'defun)

;;;***

;;;### (autoloads nil "el-get/el-get-check" "el-get/el-get-check.el"
;;;;;;  (22250 45389 30273 22000))
;;; Generated autoloads from el-get/el-get-check.el

(autoload 'el-get-check-recipe "el-get/el-get-check" "\
Check the format of the recipe.
Please run this command before sending a pull request.
Usage: M-x el-get-check-recipe RET

You can run this function from checker script like this:
    test/check-recipe.el PATH/TO/RECIPE.rcp

When used as a lisp function, FILE-OR-BUFFER must be a buffer
object or a file path.

\(fn FILE-OR-BUFFER)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get-list-packages" "el-get/el-get-list-packages.el"
;;;;;;  (22336 30058 276553 325000))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "elpy/elpy" "elpy/elpy.el" (23128 30859 553219
;;;;;;  416000))
;;; Generated autoloads from elpy/elpy.el

(autoload 'elpy-enable "elpy/elpy" "\
Enable Elpy in all future Python buffers.

\(fn &optional IGNORED)" t nil)

(autoload 'elpy-mode "elpy/elpy" "\
Minor mode in Python buffers for the Emacs Lisp Python Environment.

This mode fully supports virtualenvs. Once you switch a
virtualenv using \\[pyvenv-workon], you can use
\\[elpy-rpc-restart] to make the elpy Python process use your
virtualenv.

\\{elpy-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'elpy-config "elpy/elpy" "\
Configure Elpy.

This function will pop up a configuration buffer, which is mostly
a customize buffer, but has some more options.

\(fn)" t nil)

(autoload 'elpy-version "elpy/elpy" "\
Display the version of Elpy.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "facebook/facebook" "facebook/facebook.el"
;;;;;;  (22336 30037 320502 341000))
;;; Generated autoloads from facebook/facebook.el

(autoload 'facebook-login "facebook/facebook" "\


\(fn)" t nil)

(autoload 'facebook-users-set-status "facebook/facebook" "\


\(fn STATUS_MESSAGE)" t nil)

(autoload 'facebook-status "facebook/facebook" "\


\(fn STATUS_MESSAGE)" t nil)

;;;***

;;;### (autoloads nil "find-file-in-project/find-file-in-project"
;;;;;;  "find-file-in-project/find-file-in-project.el" (23128 30843
;;;;;;  349198 944000))
;;; Generated autoloads from find-file-in-project/find-file-in-project.el

(autoload 'ffip-git-diff-current-file "find-file-in-project/find-file-in-project" "\
Run 'git diff version:current-file current-file'.

\(fn)" nil nil)

(autoload 'ffip-copy-without-change "find-file-in-project/find-file-in-project" "\


\(fn P)" nil nil)

(autoload 'ffip-copy-reactjs-import "find-file-in-project/find-file-in-project" "\


\(fn P)" nil nil)

(autoload 'ffip-copy-org-file-link "find-file-in-project/find-file-in-project" "\


\(fn P)" nil nil)

(defvar ffip-find-relative-path-callback 'ffip-copy-without-change)

(autoload 'ffip-project-root "find-file-in-project/find-file-in-project" "\
Return the root of the project.

\(fn)" nil nil)

(autoload 'ffip-save-ivy-last "find-file-in-project/find-file-in-project" "\
Save `ivy-last' into `ffip-ivy-last-saved'.  Requires `ivy-mode'.

\(fn)" t nil)

(autoload 'ffip-get-project-root-directory "find-file-in-project/find-file-in-project" "\
Get the full path of project root directory.

\(fn)" nil nil)

(autoload 'ffip-ivy-resume "find-file-in-project/find-file-in-project" "\
Wrapper of `ivy-resume'.  Resume the search saved at `ffip-ivy-last-saved'.

\(fn)" t nil)

(autoload 'ffip-filename-identity "find-file-in-project/find-file-in-project" "\
Return identical KEYWORD.

\(fn KEYWORD)" nil nil)

(autoload 'ffip-filename-camelcase-to-dashes "find-file-in-project/find-file-in-project" "\
Convert KEYWORD from camel cased to dash seperated.
If CHECK-ONLY is true, only do the check.

\(fn KEYWORD &optional CHECK-ONLY)" nil nil)

(autoload 'ffip-filename-dashes-to-camelcase "find-file-in-project/find-file-in-project" "\
Convert KEYWORD from dash seperated to camel cased.
If CHECK-ONLY is true, only do the check.

\(fn KEYWORD &optional CHECK-ONLY)" nil nil)

(autoload 'ffip-completing-read "find-file-in-project/find-file-in-project" "\
Read a string in minibuffer, with completion.

PROMPT is a string with same format as similar paramters in `ido-completing-read'.
Collection is a list of strings.

ACTION is a lambda function to call after selecting a result.

This function returns the selected candidate or nil.

\(fn PROMPT COLLECTION &optional ACTION)" nil nil)

(autoload 'ffip-project-search "find-file-in-project/find-file-in-project" "\
Return an alist of all filenames in the project and their path.

Files with duplicate filenames are suffixed with the name of the
directory they are found in so that they are unique.

If KEYWORD is string, it's the file name or file path to find file.
If KEYWORD is list, it's the list of file names.
IF IS-FINDING-DIRECTORY is t, we are searching directories, else files.
DIRECTORY-TO-SEARCH specify the root directory to search.

\(fn KEYWORD IS-FINDING-DIRECTORY &optional DIRECTORY-TO-SEARCH)" nil nil)

(autoload 'ffip-find-files "find-file-in-project/find-file-in-project" "\
The API to find files.

\(fn KEYWORD OPEN-ANOTHER-WINDOW &optional FIND-DIRECTORY FN)" nil nil)

(autoload 'ffip-create-project-file "find-file-in-project/find-file-in-project" "\
Create or Append .dir-locals.el to set up per directory.
You can move .dir-locals.el to root directory.
See (info \"(Emacs) Directory Variables\") for details.

\(fn)" t nil)

(autoload 'ffip-current-full-filename-match-pattern-p "find-file-in-project/find-file-in-project" "\
Is current full file name (including directory) match the REGEX?

\(fn REGEX)" nil nil)

(autoload 'find-file-in-project "find-file-in-project/find-file-in-project" "\
More powerful and efficient `find-file-in-project-by-selected' is recommended.

Prompt with a completing list of all files in the project to find one.
If OPEN-ANOTHER-WINDOW is not nil, the file will be opened in new window.
The project's scope is defined as the first directory containing
a `ffip-project-file' whose value is \".git\" by default.
You can override this by setting the variable `ffip-project-root'.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'find-file-in-current-directory "find-file-in-project/find-file-in-project" "\
Like `find-file-in-project'.  But search only in current directory.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'find-file-in-project-by-selected "find-file-in-project/find-file-in-project" "\
Same as `find-file-in-project' but more poweful and efficient.
It use string from selected region to search files in the project.
If no region is selected, you could provide a keyword.

Keyword could be ANY part of the file's full path and support wildcard.
For example, to find /home/john/proj1/test.js, below keywords are valid:
- test.js
- roj1/tes
- john*test

If keyword contains line number like \"hello.txt:32\" or \"hello.txt:32:\",
we will move to that line in opened file.

If keyword is empty, it behaves same as `find-file-in-project'.

If OPEN-ANOTHER-WINDOW is not nil, the file will be opened in new window.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'find-file-with-similar-name "find-file-in-project/find-file-in-project" "\
Use base name of current file as keyword which could be further stripped
by `ffip-strip-file-name-regex'.

If OPEN-ANOTHER-WINDOW is not nil, the file will be opened in new window.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'find-file-in-current-directory-by-selected "find-file-in-project/find-file-in-project" "\
Like `find-file-in-project-by-selected'.  But search only in current directory.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'find-relative-path "find-file-in-project/find-file-in-project" "\
Find file/directory and copy its relative path into `kill-ring'.
Optional prefix FIND-DIRECTORY copy the directory path; file path by default.

You can set `ffip-find-relative-path-callback' to format the string before copying,
  (setq ffip-find-relative-path-callback 'ffip-copy-reactjs-import)
  (setq ffip-find-relative-path-callback 'ffip-copy-org-file-link)

\(fn &optional FIND-DIRECTORY)" t nil)

(autoload 'find-directory-in-project-by-selected "find-file-in-project/find-file-in-project" "\
Similar to `find-file-in-project-by-selected'.
Use string from selected region to find directory in the project.
If no region is selected, you need provide keyword.

Keyword could be directory's base-name only or parent-directoy+base-name
For example, to find /home/john/proj1/test, below keywords are valid:
- test
- roj1/test
- john*test

If OPEN-ANOTHER-WINDOW is not nil, the file will be opened in new window.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(defalias 'ffip 'find-file-in-project)

(autoload 'ffip-split-window-horizontally "find-file-in-project/find-file-in-project" "\
Find&Open file in horizontal split window.  New window size is looked
up in `ffip-window-ratio-alist' by RATIO.
Keyword to search new file is selected text or user input.

\(fn &optional RATIO)" t nil)

(autoload 'ffip-split-window-vertically "find-file-in-project/find-file-in-project" "\
Find&Open file in vertical split window.  New window size is looked
up in `ffip-window-ratio-alist' by RATIO.
Keyword to search new file is selected text or user input.

\(fn &optional RATIO)" t nil)

(autoload 'ffip-diff-quit "find-file-in-project/find-file-in-project" "\


\(fn)" t nil)

(autoload 'ffip-diff-find-file "find-file-in-project/find-file-in-project" "\
File file(s) in current hunk.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'ffip-show-diff-internal "find-file-in-project/find-file-in-project" "\
Show the diff output by excuting selected `ffip-diff-backends'.
NUM is the index selected backend from `ffip-diff-backends'.
NUM is zero based whose default value is zero.

\(fn &optional NUM)" t nil)

(autoload 'ffip-show-diff-by-description "find-file-in-project/find-file-in-project" "\
Show the diff output by excuting selected `ffip-diff-backends.
 NUM is the backend index of `ffip-diff-backends'.
If NUM is not nil, the corresponding backend is executed directly.

\(fn &optional NUM)" t nil)

(autoload 'ffip-diff-apply-hunk "find-file-in-project/find-file-in-project" "\
Apply current hunk in `diff-mode'. Try to locate the file to patch.
It's similar to `diff-apply-hunk' except it find file by `ffip-project-root'.
Please read documenation of `diff-apply-hunk' to get more details.

\(fn &optional REVERSE)" t nil)

;;;***

;;;### (autoloads nil "flycheck/flycheck" "flycheck/flycheck.el"
;;;;;;  (23128 31217 683659 938000))
;;; Generated autoloads from flycheck/flycheck.el

(autoload 'flycheck-manual "flycheck/flycheck" "\
Open the Flycheck manual.

\(fn)" t nil)

(autoload 'flycheck-mode "flycheck/flycheck" "\
Minor mode for on-the-fly syntax checking.

When called interactively, toggle `flycheck-mode'.  With prefix
ARG, enable `flycheck-mode' if ARG is positive, otherwise disable
it.

When called from Lisp, enable `flycheck-mode' if ARG is omitted,
nil or positive.  If ARG is `toggle', toggle `flycheck-mode'.
Otherwise behave as if called interactively.

In `flycheck-mode' the buffer is automatically syntax-checked
using the first suitable syntax checker from `flycheck-checkers'.
Use `flycheck-select-checker' to select a checker for the current
buffer manually.

\\{flycheck-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-flycheck-mode nil "\
Non-nil if Global Flycheck mode is enabled.
See the `global-flycheck-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-flycheck-mode'.")

(custom-autoload 'global-flycheck-mode "flycheck/flycheck" nil)

(autoload 'global-flycheck-mode "flycheck/flycheck" "\
Toggle Flycheck mode in all buffers.
With prefix ARG, enable Global Flycheck mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Flycheck mode is enabled in all buffers where
`flycheck-mode-on-safe' would do it.
See `flycheck-mode' for more information on Flycheck mode.

\(fn &optional ARG)" t nil)

(autoload 'flycheck-define-error-level "flycheck/flycheck" "\
Define a new error LEVEL with PROPERTIES.

The following PROPERTIES constitute an error level:

`:severity SEVERITY'
     A number denoting the severity of this level.  The higher
     the number, the more severe is this level compared to other
     levels.  Defaults to 0.

     The severity is used by `flycheck-error-level-<' to
     determine the ordering of errors according to their levels.

`:compilation-level LEVEL'

     A number indicating the broad class of messages that errors
     at this level belong to: one of 0 (info), 1 (warning), or
     2 or nil (error).  Defaults to nil.

     This is used by `flycheck-checker-pattern-to-error-regexp'
     to map error levels into `compilation-mode''s hierarchy and
     to get proper highlighting of errors in `compilation-mode'.

`:overlay-category CATEGORY'
     A symbol denoting the overlay category to use for error
     highlight overlays for this level.  See Info
     node `(elisp)Overlay Properties' for more information about
     overlay categories.

     A category for an error level overlay should at least define
     the `face' property, for error highlighting.  Another useful
     property for error level categories is `priority', to
     influence the stacking of multiple error level overlays.

`:fringe-bitmap BITMAP'
     A fringe bitmap symbol denoting the bitmap to use for fringe
     indicators for this level.  See Info node `(elisp)Fringe
     Bitmaps' for more information about fringe bitmaps,
     including a list of built-in fringe bitmaps.

`:fringe-face FACE'
     A face symbol denoting the face to use for fringe indicators
     for this level.

`:error-list-face FACE'
     A face symbol denoting the face to use for messages of this
     level in the error list.  See `flycheck-list-errors'.

\(fn LEVEL &rest PROPERTIES)" nil nil)

(function-put 'flycheck-define-error-level 'lisp-indent-function '1)

(autoload 'flycheck-define-command-checker "flycheck/flycheck" "\
Define SYMBOL as syntax checker to run a command.

Define SYMBOL as generic syntax checker via
`flycheck-define-generic-checker', which uses an external command
to check the buffer.  SYMBOL and DOCSTRING are the same as for
`flycheck-define-generic-checker'.

In addition to the properties understood by
`flycheck-define-generic-checker', the following PROPERTIES
constitute a command syntax checker.  Unless otherwise noted, all
properties are mandatory.  Note that the default `:error-filter'
of command checkers is `flycheck-sanitize-errors'.

`:command COMMAND'
     The command to run for syntax checking.

     COMMAND is a list of the form `(EXECUTABLE [ARG ...])'.

     EXECUTABLE is a string with the executable of this syntax
     checker.  It can be overridden with the variable
     `flycheck-SYMBOL-executable'.  Note that this variable is
     NOT implicitly defined by this function.  Use
     `flycheck-def-executable-var' to define this variable.

     Each ARG is an argument to the executable, either as string,
     or as special symbol or form for
     `flycheck-substitute-argument', which see.

`:error-patterns PATTERNS'
     A list of patterns to parse the output of the `:command'.

     Each ITEM in PATTERNS is a list `(LEVEL SEXP ...)', where
     LEVEL is a Flycheck error level (see
     `flycheck-define-error-level'), followed by one or more RX
     `SEXP's which parse an error of that level and extract line,
     column, file name and the message.

     See `rx' for general information about RX, and
     `flycheck-rx-to-string' for some special RX forms provided
     by Flycheck.

     All patterns are applied in the order of declaration to the
     whole output of the syntax checker.  Output already matched
     by a pattern will not be matched by subsequent patterns.  In
     other words, the first pattern wins.

     This property is optional.  If omitted, however, an
     `:error-parser' is mandatory.

`:error-parser FUNCTION'
     A function to parse errors with.

     The function shall accept three arguments OUTPUT CHECKER
     BUFFER.  OUTPUT is the syntax checker output as string,
     CHECKER the syntax checker that was used, and BUFFER a
     buffer object representing the checked buffer.  The function
     must return a list of `flycheck-error' objects parsed from
     OUTPUT.

     This property is optional.  If omitted, it defaults to
     `flycheck-parse-with-patterns'.  In this case,
     `:error-patterns' is mandatory.

`:standard-input t'
     Whether to send the buffer contents on standard input.

     If this property is given and has a non-nil value, send the
     contents of the buffer on standard input.

     Defaults to nil.

Note that you may not give `:start', `:interrupt', and
`:print-doc' for a command checker.  You can give a custom
`:verify' function, though, whose results will be appended to the
default `:verify' function of command checkers.

\(fn SYMBOL DOCSTRING &rest PROPERTIES)" nil nil)

(function-put 'flycheck-define-command-checker 'lisp-indent-function '1)

(function-put 'flycheck-define-command-checker 'doc-string-elt '2)

(autoload 'flycheck-def-config-file-var "flycheck/flycheck" "\
Define SYMBOL as config file variable for CHECKER, with default FILE-NAME.

SYMBOL is declared as customizable variable using `defcustom', to
provide a configuration file for the given syntax CHECKER.
CUSTOM-ARGS are forwarded to `defcustom'.

FILE-NAME is the initial value of the new variable.  If omitted,
the default value is nil.

Use this together with the `config-file' form in the `:command'
argument to `flycheck-define-checker'.

\(fn SYMBOL CHECKER &optional FILE-NAME &rest CUSTOM-ARGS)" nil t)

(function-put 'flycheck-def-config-file-var 'lisp-indent-function '3)

(autoload 'flycheck-def-option-var "flycheck/flycheck" "\
Define SYMBOL as option variable with INIT-VALUE for CHECKER.

SYMBOL is declared as customizable variable using `defcustom', to
provide an option for the given syntax CHECKERS (a checker or a
list of checkers).  INIT-VALUE is the initial value of the
variable, and DOCSTRING is its docstring.  CUSTOM-ARGS are
forwarded to `defcustom'.

Use this together with the `option', `option-list' and
`option-flag' forms in the `:command' argument to
`flycheck-define-checker'.

\(fn SYMBOL INIT-VALUE CHECKERS DOCSTRING &rest CUSTOM-ARGS)" nil t)

(function-put 'flycheck-def-option-var 'lisp-indent-function '3)

(function-put 'flycheck-def-option-var 'doc-string-elt '4)

;;;***

;;;### (autoloads nil "go-mode/go-guru" "go-mode/go-guru.el" (22583
;;;;;;  39880 151269 715000))
;;; Generated autoloads from go-mode/go-guru.el

(autoload 'go-guru-set-scope "go-mode/go-guru" "\
Set the scope for the Go guru, prompting the user to edit the previous scope.

The scope restricts analysis to the specified packages.
Its value is a comma-separated list of patterns of these forms:
	golang.org/x/tools/cmd/guru     # a single package
	golang.org/x/tools/...          # all packages beneath dir
	...                             # the entire workspace.

A pattern preceded by '-' is negative, so the scope
	encoding/...,-encoding/xml
matches all encoding packages except encoding/xml.

\(fn)" t nil)

(autoload 'go-guru-callees "go-mode/go-guru" "\
Show possible callees of the function call at the current point.

\(fn)" t nil)

(autoload 'go-guru-callers "go-mode/go-guru" "\
Show the set of callers of the function containing the current point.

\(fn)" t nil)

(autoload 'go-guru-callstack "go-mode/go-guru" "\
Show an arbitrary path from a root of the call graph to the
function containing the current point.

\(fn)" t nil)

(autoload 'go-guru-definition "go-mode/go-guru" "\
Jump to the definition of the selected identifier.

\(fn)" t nil)

(autoload 'go-guru-describe "go-mode/go-guru" "\
Describe the selected syntax, its kind, type and methods.

\(fn)" t nil)

(autoload 'go-guru-pointsto "go-mode/go-guru" "\
Show what the selected expression points to.

\(fn)" t nil)

(autoload 'go-guru-implements "go-mode/go-guru" "\
Describe the 'implements' relation for types in the package
containing the current point.

\(fn)" t nil)

(autoload 'go-guru-freevars "go-mode/go-guru" "\
Enumerate the free variables of the current selection.

\(fn)" t nil)

(autoload 'go-guru-peers "go-mode/go-guru" "\
Enumerate the set of possible corresponding sends/receives for
this channel receive/send operation.

\(fn)" t nil)

(autoload 'go-guru-referrers "go-mode/go-guru" "\
Enumerate all references to the object denoted by the selected
identifier.

\(fn)" t nil)

(autoload 'go-guru-whicherrs "go-mode/go-guru" "\
Show globals, constants and types to which the selected
expression (of type 'error') may refer.

\(fn)" t nil)

(autoload 'go-guru-unhighlight-identifiers "go-mode/go-guru" "\
Remove highlights from previously highlighted identifier.

\(fn)" nil nil)

(autoload 'go-guru-hl-identifier "go-mode/go-guru" "\
Highlight all instances of the identifier under point. Removes
highlights from previously highlighted identifier.

\(fn)" t nil)

(autoload 'go-guru-hl-identifier-mode "go-mode/go-guru" "\
Highlight instances of the identifier at point after a short
timeout.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "go-mode/go-mode" "go-mode/go-mode.el" (22583
;;;;;;  39880 152269 718000))
;;; Generated autoloads from go-mode/go-mode.el

(autoload 'go-mode "go-mode/go-mode" "\
Major mode for editing Go source text.

This mode provides (not just) basic editing capabilities for
working with Go code. It offers almost complete syntax
highlighting, indentation that is almost identical to gofmt and
proper parsing of the buffer content to allow features such as
navigation by function, manipulation of comments or detection of
strings.

In addition to these core features, it offers various features to
help with writing Go code. You can directly run buffer content
through gofmt, read godoc documentation from within Emacs, modify
and clean up the list of package imports or interact with the
Playground (uploading and downloading pastes).

The following extra functions are defined:

- `gofmt'
- `godoc' and `godoc-at-point'
- `go-import-add'
- `go-remove-unused-imports'
- `go-goto-arguments'
- `go-goto-docstring'
- `go-goto-function'
- `go-goto-function-name'
- `go-goto-imports'
- `go-goto-return-values'
- `go-goto-method-receiver'
- `go-play-buffer' and `go-play-region'
- `go-download-play'
- `godef-describe' and `godef-jump'
- `go-coverage'
- `go-set-project'
- `go-reset-gopath'

If you want to automatically run `gofmt' before saving a file,
add the following hook to your emacs configuration:

\(add-hook 'before-save-hook #'gofmt-before-save)

If you want to use `godef-jump' instead of etags (or similar),
consider binding godef-jump to `M-.', which is the default key
for `find-tag':

\(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd \"M-.\") #'godef-jump)))

Please note that godef is an external dependency. You can install
it with

go get github.com/rogpeppe/godef


If you're looking for even more integration with Go, namely
on-the-fly syntax checking, auto-completion and snippets, it is
recommended that you look at flycheck
\(see URL `https://github.com/flycheck/flycheck') or flymake in combination
with goflymake (see URL `https://github.com/dougm/goflymake'), gocode
\(see URL `https://github.com/nsf/gocode'), go-eldoc
\(see URL `github.com/syohex/emacs-go-eldoc') and yasnippet-go
\(see URL `https://github.com/dominikh/yasnippet-go')

\(fn)" t nil)

(add-to-list 'auto-mode-alist (cons "\\.go\\'" 'go-mode))

(autoload 'gofmt-before-save "go-mode/go-mode" "\
Add this to .emacs to run gofmt on the current buffer when saving:
 (add-hook 'before-save-hook 'gofmt-before-save).

Note that this will cause go-mode to get loaded the first time
you save any file, kind of defeating the point of autoloading.

\(fn)" t nil)

(autoload 'godoc "go-mode/go-mode" "\
Show Go documentation for QUERY, much like M-x man.

\(fn QUERY)" t nil)

(autoload 'go-download-play "go-mode/go-mode" "\
Download a paste from the playground and insert it in a Go buffer.
Tries to look for a URL at point.

\(fn URL)" t nil)

;;;***

;;;### (autoloads nil "go-mode/go-rename" "go-mode/go-rename.el"
;;;;;;  (22583 39880 152269 718000))
;;; Generated autoloads from go-mode/go-rename.el

(autoload 'go-rename "go-mode/go-rename" "\
Rename the entity denoted by the identifier at point, using
the `gorename' tool. With FORCE, call `gorename' with the
`-force' flag.

\(fn NEW-NAME &optional FORCE)" t nil)

;;;***

;;;### (autoloads nil "graphviz-dot-mode/graphviz-dot-mode" "graphviz-dot-mode/graphviz-dot-mode.el"
;;;;;;  (22250 45384 929270 246000))
;;; Generated autoloads from graphviz-dot-mode/graphviz-dot-mode.el

(autoload 'graphviz-dot-mode "graphviz-dot-mode/graphviz-dot-mode" "\
Major mode for the dot language. \\<graphviz-dot-mode-map>
TAB indents for graph lines.

\\[graphviz-dot-indent-graph]	- Indentation function.
\\[graphviz-dot-preview]	- Previews graph in a buffer.
\\[graphviz-dot-view]	- Views graph in an external viewer.
\\[graphviz-dot-indent-line]	- Indents current line of code.
\\[graphviz-dot-complete-word]	- Completes the current word.
\\[electric-graphviz-dot-terminate-line]	- Electric newline.
\\[electric-graphviz-dot-open-brace]	- Electric open braces.
\\[electric-graphviz-dot-close-brace]	- Electric close braces.
\\[electric-graphviz-dot-semi]	- Electric semi colons.

Variables specific to this mode:

  graphviz-dot-dot-program            (default `dot')
       Location of the dot program.
  graphviz-dot-view-command           (default `doted %s')
       Command to run when `graphviz-dot-view' is executed.
  graphviz-dot-view-edit-command      (default nil)
       If the user should be asked to edit the view command.
  graphviz-dot-save-before-view       (default t)
       Automatically save current buffer berore `graphviz-dot-view'.
  graphviz-dot-preview-extension      (default `png')
       File type to use for `graphviz-dot-preview'.
  graphviz-dot-auto-indent-on-newline (default t)
       Whether to run `electric-graphviz-dot-terminate-line' when
       newline is entered.
  graphviz-dot-auto-indent-on-braces (default t)
       Whether to run `electric-graphviz-dot-open-brace' and
       `electric-graphviz-dot-close-brace' when braces are
       entered.
  graphviz-dot-auto-indent-on-semi (default t)
       Whether to run `electric-graphviz-dot-semi' when semi colon
       is typed.
  graphviz-dot-toggle-completions  (default nil)
       If completions should be displayed in the buffer instead of a
       completion buffer when \\[graphviz-dot-complete-word] is
       pressed repeatedly.

This mode can be customized by running \\[graphviz-dot-customize].

Turning on Graphviz Dot mode calls the value of the variable
`graphviz-dot-mode-hook' with no args, if that value is non-nil.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.dot\\'" . graphviz-dot-mode))

(add-to-list 'auto-mode-alist '("\\.gv\\'" . graphviz-dot-mode))

;;;***

;;;### (autoloads nil "highlight-indentation/highlight-indentation"
;;;;;;  "highlight-indentation/highlight-indentation.el" (23128 30840
;;;;;;  945195 907000))
;;; Generated autoloads from highlight-indentation/highlight-indentation.el

(autoload 'highlight-indentation-mode "highlight-indentation/highlight-indentation" "\
Highlight indentation minor mode highlights indentation based on spaces

\(fn &optional ARG)" t nil)

(autoload 'highlight-indentation-set-offset "highlight-indentation/highlight-indentation" "\
Set indentation offset localy in buffer, will prevent
highlight-indentation from trying to guess indentation offset
from major mode

\(fn OFFSET)" t nil)

(autoload 'highlight-indentation-current-column-mode "highlight-indentation/highlight-indentation" "\
Hilight Indentation minor mode displays a vertical bar
corresponding to the indentation of the current line

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "idomenu/idomenu" "idomenu/idomenu.el" (23128
;;;;;;  30846 160202 496000))
;;; Generated autoloads from idomenu/idomenu.el

(autoload 'idomenu "idomenu/idomenu" "\
Switch to a buffer-local tag from Imenu via Ido.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "pkg-info/pkg-info" "pkg-info/pkg-info.el"
;;;;;;  (23128 30884 234250 597000))
;;; Generated autoloads from pkg-info/pkg-info.el

(autoload 'pkg-info-library-original-version "pkg-info/pkg-info" "\
Get the original version in the header of LIBRARY.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no X-Original-Version
header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-library-version "pkg-info/pkg-info" "\
Get the version in the header of LIBRARY.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no proper header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-original-version "pkg-info/pkg-info" "\
Get the original version of the library defining FUNCTION.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-version "pkg-info/pkg-info" "\
Get the version of the library defining FUNCTION.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-package-version "pkg-info/pkg-info" "\
Get the version of an installed PACKAGE.

If SHOW is non-nil, show the version in the minibuffer.

Return the version as list, or nil if PACKAGE is not installed.

\(fn PACKAGE &optional SHOW)" t nil)

(autoload 'pkg-info-version-info "pkg-info/pkg-info" "\
Obtain complete version info for LIBRARY and PACKAGE.

LIBRARY is a symbol denoting a named feature, or a library name
as string.  PACKAGE is a symbol denoting an ELPA package.  If
omitted or nil, default to LIBRARY.

If SHOW is non-nil, show the version in the minibuffer.

When called interactively, prompt for LIBRARY.  When called
interactively with prefix argument, prompt for PACKAGE as well.

Return a string with complete version information for LIBRARY.
This version information contains the version from the headers of
LIBRARY, and the version of the installed PACKAGE, the LIBRARY is
part of.  If PACKAGE is not installed, or if the PACKAGE version
is the same as the LIBRARY version, do not include a package
version.

\(fn LIBRARY &optional PACKAGE SHOW)" t nil)

;;;***

;;;### (autoloads nil "py-autopep8/py-autopep8" "py-autopep8/py-autopep8.el"
;;;;;;  (23128 37179 939954 17000))
;;; Generated autoloads from py-autopep8/py-autopep8.el

(autoload 'py-autopep8 "py-autopep8/py-autopep8" "\
Deprecated! Use py-autopep8-buffer instead.

\(fn)" t nil)

(autoload 'py-autopep8-buffer "py-autopep8/py-autopep8" "\
Uses the \"autopep8\" tool to reformat the current buffer.

\(fn)" t nil)

(autoload 'py-autopep8-enable-on-save "py-autopep8/py-autopep8" "\
Pre-save hook to be used before running autopep8.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "python-cell/python-cell" "python-cell/python-cell.el"
;;;;;;  (23131 22869 728889 752000))
;;; Generated autoloads from python-cell/python-cell.el

(autoload 'python-cell-mode "python-cell/python-cell" "\
Highlight MATLAB-like cells and navigate between them.

\(fn &optional ARG)" t nil)

(autoload 'python-cell-mode-enable "python-cell/python-cell" "\


\(fn)" nil nil)

(autoload 'python-cell-mode-disable "python-cell/python-cell" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "python-django/python-django" "python-django/python-django.el"
;;;;;;  (23131 22904 121900 513000))
;;; Generated autoloads from python-django/python-django.el

(autoload 'python-django-open-project "python-django/python-django" "\
Open a Django project at given DIRECTORY using SETTINGS.
Optional argument EXISTING is internal and should not be used.

The recommended way to chose your project root, is to use the
directory containing your settings module; for instance if your
settings module is in /path/django/settings.py, use /path/django/
as your project path and django.settings as your settings module.

When called with no `prefix-arg', this function will try to find
an opened project-buffer, if current buffer is already a project
buffer it will cycle to next opened project.  If no project
buffers are found, then the user prompted for the project path
and settings module unless `python-django-project-root' and
`python-django-project-settings' are somehow set, normally via
directory local variables.  If none of the above matched or the
function is called with one `prefix-arg' and there are projects
defined in the `python-django-known-projects' variable the user
is prompted for any of those known projects, if the variable
turns to be nil the user will be prompted for project-path and
settings module (the same happens when called with two or more
`prefix-arg').

\(fn DIRECTORY SETTINGS &optional EXISTING)" t nil)

;;;***

;;;### (autoloads nil "python-pep8/python-pep8" "python-pep8/python-pep8.el"
;;;;;;  (23131 22792 736865 305000))
;;; Generated autoloads from python-pep8/python-pep8.el

(autoload 'python-pep8 "python-pep8/python-pep8" "\
Run PEP8, and collect output in a buffer.
While pep8 runs asynchronously, you can use \\[next-error] (M-x next-error),
or \\<python-pep8-mode-map>\\[compile-goto-error] in the grep output buffer, to go to the lines where pep8 found matches.

\(fn)" t nil)

(defalias 'pep8 'python-pep8)

;;;***

;;;### (autoloads nil "pythonic/pythonic" "pythonic/pythonic.el"
;;;;;;  (23131 22671 207826 717000))
;;; Generated autoloads from pythonic/pythonic.el

(autoload 'pythonic-activate "pythonic/pythonic" "\
Activate python VIRTUALENV.

\(fn VIRTUALENV)" t nil)

(autoload 'pythonic-deactivate "pythonic/pythonic" "\
Deactivate python virtual environment.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "pyvenv/pyvenv" "pyvenv/pyvenv.el" (23128 30848
;;;;;;  457205 398000))
;;; Generated autoloads from pyvenv/pyvenv.el

(autoload 'pyvenv-activate "pyvenv/pyvenv" "\
Activate the virtual environment in DIRECTORY.

\(fn DIRECTORY)" t nil)

(autoload 'pyvenv-deactivate "pyvenv/pyvenv" "\
Deactivate any current virtual environment.

\(fn)" t nil)

(autoload 'pyvenv-workon "pyvenv/pyvenv" "\
Activate a virtual environment from $WORKON_HOME.

\(fn NAME)" t nil)

(defvar pyvenv-mode nil "\
Non-nil if Pyvenv mode is enabled.
See the `pyvenv-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `pyvenv-mode'.")

(custom-autoload 'pyvenv-mode "pyvenv/pyvenv" nil)

(autoload 'pyvenv-mode "pyvenv/pyvenv" "\
Global minor mode for pyvenv.

Will show the current virtualenv in the mode line, and respect a
`pyvenv-workon' setting in files.

\(fn &optional ARG)" t nil)

(defvar pyvenv-tracking-mode nil "\
Non-nil if Pyvenv-Tracking mode is enabled.
See the `pyvenv-tracking-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `pyvenv-tracking-mode'.")

(custom-autoload 'pyvenv-tracking-mode "pyvenv/pyvenv" nil)

(autoload 'pyvenv-tracking-mode "pyvenv/pyvenv" "\
Global minor mode to track the current virtualenv.

When this mode is active, pyvenv will activate a buffer-specific
virtualenv whenever the user switches to a buffer with a
buffer-local `pyvenv-workon' or `pyvenv-activate' variable.

\(fn &optional ARG)" t nil)

(autoload 'pyvenv-restart-python "pyvenv/pyvenv" "\
Restart Python inferior processes.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "virtualenvwrapper/virtualenvwrapper" "virtualenvwrapper/virtualenvwrapper.el"
;;;;;;  (23131 23522 653093 777000))
;;; Generated autoloads from virtualenvwrapper/virtualenvwrapper.el

(autoload 'venv-deactivate "virtualenvwrapper/virtualenvwrapper" "\
Deactivate the current venv.

\(fn)" t nil)

(autoload 'venv-set-location "virtualenvwrapper/virtualenvwrapper" "\
Set where to look for virtual environments to LOCATION.
This is useful e.g. when using tox.

\(fn &optional LOCATION)" t nil)

(autoload 'venv-workon "virtualenvwrapper/virtualenvwrapper" "\
Interactively switch to virtualenv NAME. Prompts for name if called
interactively.

\(fn &optional NAME)" t nil)

(autoload 'venv-mkvirtualenv-using "virtualenvwrapper/virtualenvwrapper" "\
Create new virtualenvs NAMES using INTERPRETER. If venv-location
is a single directory, the new virtualenvs are made there; if it
is a list of directories, the new virtualenvs are made in the
current `default-directory'.

\(fn INTERPRETER &rest NAMES)" t nil)

(autoload 'venv-mkvirtualenv "virtualenvwrapper/virtualenvwrapper" "\
Create new virtualenvs NAMES. If venv-location is a single
directory, the new virtualenvs are made there; if it is a list of
directories, the new virtualenvs are made in the current
`default-directory'.

\(fn &rest NAMES)" t nil)

(autoload 'venv-rmvirtualenv "virtualenvwrapper/virtualenvwrapper" "\
Delete virtualenvs NAMES.

\(fn &rest NAMES)" t nil)

(autoload 'venv-lsvirtualenv "virtualenvwrapper/virtualenvwrapper" "\
List all available virtualenvs in a temp buffer.

\(fn)" t nil)

(autoload 'venv-cdvirtualenv "virtualenvwrapper/virtualenvwrapper" "\
Change to the directory of current virtualenv. If
SUBDIR is passed, append that to the path such that
we are immediately in that directory.

\(fn &optional SUBDIR)" t nil)

(autoload 'venv-cpvirtualenv "virtualenvwrapper/virtualenvwrapper" "\
Copy virtualenv NAME to NEWNAME. Any arguments not passed will be
prompted for This comes with the same caveat as cpvirtualenv in the
original virtualenvwrapper, which is that is far from guarenteed to
work well. Many packages hardcode absolute paths in various places an
will break if moved to a new location. Use with caution. If used with
a single virtualenv directory, behaves just like cpvirtualenv in
virtualenvwrapper.sh.  If used with virtualenvs spread around the
filesystem, creates the new virtualenv in the current default
directory.

\(fn &optional NAME NEWNAME)" t nil)

(autoload 'venv-shell-init "virtualenvwrapper/virtualenvwrapper" "\
Activate the current virtualenv in a newly opened shell.

\(fn PROCESS)" nil nil)

(autoload 'venv-initialize-interactive-shells "virtualenvwrapper/virtualenvwrapper" "\
Configure interactive shells for use with
virtualenvwrapper.el.

\(fn)" nil nil)

(autoload 'venv-initialize-eshell "virtualenvwrapper/virtualenvwrapper" "\
Configure eshell for use with virtualenvwrapper.el.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "yasnippet/yasnippet" "yasnippet/yasnippet.el"
;;;;;;  (22336 30058 771554 530000))
;;; Generated autoloads from yasnippet/yasnippet.el

(autoload 'yas-minor-mode "yasnippet/yasnippet" "\
Toggle YASnippet mode.

When YASnippet mode is enabled, `yas-expand', normally bound to
the TAB key, expands snippets of code depending on the major
mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

Key bindings:
\\{yas-minor-mode-map}

\(fn &optional ARG)" t nil)

(defvar yas-global-mode nil "\
Non-nil if Yas-Global mode is enabled.
See the command `yas-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yas-global-mode'.")

(custom-autoload 'yas-global-mode "yasnippet/yasnippet" nil)

(autoload 'yas-global-mode "yasnippet/yasnippet" "\
Toggle Yas minor mode in all buffers.
With prefix ARG, enable Yas-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yas minor mode is enabled in all buffers where
`yas-minor-mode-on' would do it.
See `yas-minor-mode' for more information on Yas minor mode.

\(fn &optional ARG)" t nil)

(autoload 'snippet-mode "yasnippet/yasnippet" "\
A mode for editing yasnippets

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("ein/lisp/debug-ein.el" "ein/lisp/ein-ac.el"
;;;;;;  "ein/lisp/ein-cell-edit.el" "ein/lisp/ein-cell-output.el"
;;;;;;  "ein/lisp/ein-cell.el" "ein/lisp/ein-classes.el" "ein/lisp/ein-completer.el"
;;;;;;  "ein/lisp/ein-contents-api.el" "ein/lisp/ein-core.el" "ein/lisp/ein-events.el"
;;;;;;  "ein/lisp/ein-file.el" "ein/lisp/ein-ipdb.el" "ein/lisp/ein-kernelinfo.el"
;;;;;;  "ein/lisp/ein-kill-ring.el" "ein/lisp/ein-loaddefs.el" "ein/lisp/ein-log.el"
;;;;;;  "ein/lisp/ein-multilang-fontify.el" "ein/lisp/ein-node.el"
;;;;;;  "ein/lisp/ein-notification.el" "ein/lisp/ein-output-area.el"
;;;;;;  "ein/lisp/ein-pager.el" "ein/lisp/ein-pkg.el" "ein/lisp/ein-python.el"
;;;;;;  "ein/lisp/ein-pytools.el" "ein/lisp/ein-query.el" "ein/lisp/ein-scratchsheet.el"
;;;;;;  "ein/lisp/ein-skewer.el" "ein/lisp/ein-smartrep.el" "ein/lisp/ein-subpackages.el"
;;;;;;  "ein/lisp/ein-utils.el" "ein/lisp/ein-websocket.el" "ein/lisp/ein-worksheet.el"
;;;;;;  "ein/lisp/ein.el" "ein/lisp/ob-ein.el" "ein/lisp/zeroein.el"
;;;;;;  "request/request-deferred.el" "request/request.el" "websocket/websocket-functional-test.el"
;;;;;;  "websocket/websocket-test.el" "websocket/websocket.el") (23138
;;;;;;  44986 201473 767000))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
