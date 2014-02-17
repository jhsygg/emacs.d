;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (apache-mode) "apache-mode/apache-mode" "apache-mode/apache-mode.el"
;;;;;;  (21150 45884))
;;; Generated autoloads from apache-mode/apache-mode.el

(autoload 'apache-mode "apache-mode/apache-mode" "\
Major mode for editing Apache configuration files.

\(fn)" t nil)
(add-to-list 'auto-mode-alist '("\\.htaccess\\'"   . apache-mode))
(add-to-list 'auto-mode-alist '("httpd\\.conf\\'"  . apache-mode))
(add-to-list 'auto-mode-alist '("srm\\.conf\\'"    . apache-mode))
(add-to-list 'auto-mode-alist '("access\\.conf\\'" . apache-mode))
(add-to-list 'auto-mode-alist '("sites-\\(available\\|enabled\\)/" . apache-mode))

;;;***

;;;### (autoloads (ascii-off ascii-on ascii-display ascii-customize)
;;;;;;  "ascii/ascii" "ascii/ascii.el" (21237 47594))
;;; Generated autoloads from ascii/ascii.el

(autoload 'ascii-customize "ascii/ascii" "\
Customize ASCII options.

\(fn)" t nil)

(autoload 'ascii-display "ascii/ascii" "\
Toggle ASCII code display.

If ARG is null, toggle ASCII code display.
If ARG is a number and is greater than zero, turn on display; otherwise, turn
off display.
If ARG is anything else, turn on display.

\(fn &optional ARG)" t nil)

(autoload 'ascii-on "ascii/ascii" "\
Turn on ASCII code display.

\(fn)" t nil)

(autoload 'ascii-off "ascii/ascii" "\
Turn off ASCII code display.

\(fn)" t nil)

;;;***

;;;### (autoloads (turn-on-bib-cite bib-cite-minor-mode) "auctex/bib-cite"
;;;;;;  "auctex/bib-cite.el" (18341 54637))
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

;;;### (autoloads (context-mode) "auctex/context" "auctex/context.el"
;;;;;;  (20911 47549))
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

;;;### (autoloads (context-en-mode) "auctex/context-en" "auctex/context-en.el"
;;;;;;  (19618 16518))
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

;;;### (autoloads (context-nl-mode) "auctex/context-nl" "auctex/context-nl.el"
;;;;;;  (19618 16529))
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

;;;### (autoloads (font-latex-setup) "auctex/font-latex" "auctex/font-latex.el"
;;;;;;  (20700 41370))
;;; Generated autoloads from auctex/font-latex.el

(autoload 'font-latex-setup "auctex/font-latex" "\
Setup this buffer for LaTeX font-lock.  Usually called from a hook.

\(fn)" nil nil)

;;;***

;;;### (autoloads (docTeX-mode TeX-latex-mode BibTeX-auto-store)
;;;;;;  "auctex/latex" "auctex/latex.el" (20826 34613))
;;; Generated autoloads from auctex/latex.el

(autoload 'BibTeX-auto-store "auctex/latex" "\
This function should be called from `bibtex-mode-hook'.
It will setup BibTeX to store keys in an auto file.

\(fn)" nil nil)

(add-to-list 'auto-mode-alist '("\\.drv\\'" . latex-mode))

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

;;;### (autoloads (multi-prompt-key-value multi-prompt) "auctex/multi-prompt"
;;;;;;  "auctex/multi-prompt.el" (20770 16651))
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

;;;### (autoloads (ams-tex-mode TeX-plain-tex-mode) "auctex/plain-tex"
;;;;;;  "auctex/plain-tex.el" (19707 64159))
;;; Generated autoloads from auctex/plain-tex.el

(autoload 'TeX-plain-tex-mode "auctex/plain-tex" "\
Major mode in AUCTeX for editing plain TeX files.
See info under AUCTeX for documentation.

Special commands:
\\{plain-TeX-mode-map}

Entering `plain-tex-mode' calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of plain-TeX-mode-hook.

\(fn)" t nil)

(autoload 'ams-tex-mode "auctex/plain-tex" "\
Major mode in AUCTeX for editing AmS-TeX files.
See info under AUCTeX for documentation.

Special commands:
\\{AmSTeX-mode-map}

Entering AmS-tex-mode calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `AmS-TeX-mode-hook'.

\(fn)" t nil)

;;;***

;;;### (autoloads (LaTeX-install-toolbar TeX-install-toolbar) "auctex/tex-bar"
;;;;;;  "auctex/tex-bar.el" (20690 53662))
;;; Generated autoloads from auctex/tex-bar.el

(autoload 'TeX-install-toolbar "auctex/tex-bar" "\
Install toolbar buttons for TeX mode.

\(fn)" t nil)

(autoload 'LaTeX-install-toolbar "auctex/tex-bar" "\
Install toolbar buttons for LaTeX mode.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/tex-fold" "auctex/tex-fold.el" (20669
;;;;;;  44509))
;;; Generated autoloads from auctex/tex-fold.el
 (autoload 'TeX-fold-mode "tex-fold" "Minor mode for hiding and revealing macros and environments." t)

(defalias 'tex-fold-mode 'TeX-fold-mode)

;;;***

;;;### (autoloads (tex-font-setup) "auctex/tex-font" "auctex/tex-font.el"
;;;;;;  (18341 54636))
;;; Generated autoloads from auctex/tex-font.el

(autoload 'tex-font-setup "auctex/tex-font" "\
Setup font lock support for TeX.

\(fn)" nil nil)

;;;***

;;;### (autoloads (TeX-texinfo-mode) "auctex/tex-info" "auctex/tex-info.el"
;;;;;;  (20659 23181))
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

;;;### (autoloads (global-auto-complete-mode auto-complete-mode auto-complete)
;;;;;;  "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (21237 47587))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

(autoload 'auto-complete-mode "auto-complete/auto-complete" "\
AutoComplete mode

\(fn &optional ARG)" t nil)

(defvar global-auto-complete-mode nil "\
Non-nil if Global-Auto-Complete mode is enabled.
See the command `global-auto-complete-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-auto-complete-mode'.")

(custom-autoload 'global-auto-complete-mode "auto-complete/auto-complete" nil)

(autoload 'global-auto-complete-mode "auto-complete/auto-complete" "\
Toggle Auto-Complete mode in all buffers.
With prefix ARG, enable Global-Auto-Complete mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Complete mode is enabled in all buffers where
`auto-complete-mode-maybe' would do it.
See `auto-complete-mode' for more information on Auto-Complete mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (holiday-solar-term holiday-lunar cal-china-x-birthday-from-chinese)
;;;;;;  "cal-china-x/cal-china-x" "cal-china-x/cal-china-x.el" (21237
;;;;;;  47596))
;;; Generated autoloads from cal-china-x/cal-china-x.el

(autoload 'cal-china-x-birthday-from-chinese "cal-china-x/cal-china-x" "\
Return birthday date this year in Gregorian form.

LUNAR-MONTH and LUNAR-DAY are date number used in chinese lunar
calendar.

\(fn LUNAR-MONTH LUNAR-DAY)" t nil)

(autoload 'holiday-lunar "cal-china-x/cal-china-x" "\
Like `holiday-fixed', but with LUNAR-MONTH and LUNAR-DAY.
When there are multiple days(like Run Yue or 闰月, e.g.,
2006-08-30), we use NUM to define which day(s) as holidays. The
rules are:

NUM = 0, only the earlier day.
NUM = 1, only the later day.
NUM with other values(default), all days(maybe one or two).

\(fn LUNAR-MONTH LUNAR-DAY STRING &optional NUM)" nil nil)

(autoload 'holiday-solar-term "cal-china-x/cal-china-x" "\
A holiday(STR) on SOLAR-TERM day.
See `cal-china-x-solar-term-name' for a list of solar term names .

\(fn SOLAR-TERM STR)" nil nil)

;;;***

;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-all el-get-version) "el-get/el-get"
;;;;;;  "el-get/el-get.el" (21148 14739))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get/el-get-list-packages"
;;;;;;  "el-get/el-get-list-packages.el" (21148 14739))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (bookmark-w3m-bookmark-jump) "emacs-w3m/bookmark-w3m"
;;;;;;  "emacs-w3m/bookmark-w3m.el" (19648 52975))
;;; Generated autoloads from emacs-w3m/bookmark-w3m.el

(autoload 'bookmark-w3m-bookmark-jump "emacs-w3m/bookmark-w3m" "\
Default bookmark handler for w3m buffers.

\(fn BOOKMARK)" nil nil)

;;;***

;;;### (autoloads (mime-w3m-preview-text/html) "emacs-w3m/mime-w3m"
;;;;;;  "emacs-w3m/mime-w3m.el" (20927 43680))
;;; Generated autoloads from emacs-w3m/mime-w3m.el

(autoload 'mime-w3m-preview-text/html "emacs-w3m/mime-w3m" "\


\(fn ENTITY SITUATION)" nil nil)

;;;***

;;;### (autoloads (octet-mime-setup mime-view-octet mime-preview-octet
;;;;;;  octet-find-file octet-buffer) "emacs-w3m/octet" "emacs-w3m/octet.el"
;;;;;;  (21237 47596))
;;; Generated autoloads from emacs-w3m/octet.el

(autoload 'octet-buffer "emacs-w3m/octet" "\
View octet-stream content according to `octet-type-filter-alist'.
Optional NAME is the filename.
If optional CONTENT-TYPE is specified, it is used for type guess.

\(fn &optional NAME CONTENT-TYPE)" t nil)

(autoload 'octet-find-file "emacs-w3m/octet" "\
Find FILE with octet-stream decoding.

\(fn FILE)" t nil)

(autoload 'mime-preview-octet "emacs-w3m/octet" "\
A method for mime-view to preview octet message.

\(fn ENTITY SITUATION)" nil nil)

(autoload 'mime-view-octet "emacs-w3m/octet" "\
A method for mime-view to display octet message.

\(fn ENTITY SITUATION)" nil nil)

(autoload 'octet-mime-setup "emacs-w3m/octet" "\
Octet setting for MIME module.

\(fn)" nil nil)

;;;***

;;;### (autoloads (w3m-antenna w3m-about-antenna) "emacs-w3m/w3m-antenna"
;;;;;;  "emacs-w3m/w3m-antenna.el" (19187 58267))
;;; Generated autoloads from emacs-w3m/w3m-antenna.el

(autoload 'w3m-about-antenna "emacs-w3m/w3m-antenna" "\


\(fn URL &optional NO-DECODE NO-CACHE POST-DATA REFERER HANDLER)" nil nil)

(autoload 'w3m-antenna "emacs-w3m/w3m-antenna" "\
Report changes of WEB sites, which is specified in `w3m-antenna-sites'.

\(fn &optional NO-CACHE)" t nil)

;;;***

;;;### (autoloads (w3m-setup-bookmark-menu w3m-about-bookmark w3m-bookmark-view-new-session
;;;;;;  w3m-bookmark-view w3m-bookmark-add-current-url-group w3m-bookmark-add-all-urls
;;;;;;  w3m-bookmark-add-current-url w3m-bookmark-add-this-url) "emacs-w3m/w3m-bookmark"
;;;;;;  "emacs-w3m/w3m-bookmark.el" (20597 64488))
;;; Generated autoloads from emacs-w3m/w3m-bookmark.el

(autoload 'w3m-bookmark-add-this-url "emacs-w3m/w3m-bookmark" "\
Add link under cursor to bookmark.

\(fn)" t nil)

(autoload 'w3m-bookmark-add-current-url "emacs-w3m/w3m-bookmark" "\
Add a url of the current page to the bookmark.
With prefix, ask for a new url instead of the present one.

\(fn &optional ARG)" t nil)

(autoload 'w3m-bookmark-add-all-urls "emacs-w3m/w3m-bookmark" "\
Add urls of all pages being visited to the bookmark.

\(fn)" t nil)

(autoload 'w3m-bookmark-add-current-url-group "emacs-w3m/w3m-bookmark" "\
Add link of the group of current urls to the bookmark.

\(fn)" t nil)

(autoload 'w3m-bookmark-view "emacs-w3m/w3m-bookmark" "\
Display the bookmark.

\(fn &optional RELOAD)" t nil)

(autoload 'w3m-bookmark-view-new-session "emacs-w3m/w3m-bookmark" "\
Display the bookmark on a new session.

\(fn &optional RELOAD)" t nil)

(autoload 'w3m-about-bookmark "emacs-w3m/w3m-bookmark" "\


\(fn &rest ARGS)" nil nil)

(autoload 'w3m-setup-bookmark-menu "emacs-w3m/w3m-bookmark" "\
Setup w3m bookmark items in menubar.

\(fn)" nil nil)

;;;***

;;;### (autoloads (w3m-about-cookie w3m-cookie w3m-cookie-get w3m-cookie-set
;;;;;;  w3m-cookie-shutdown) "emacs-w3m/w3m-cookie" "emacs-w3m/w3m-cookie.el"
;;;;;;  (19449 53703))
;;; Generated autoloads from emacs-w3m/w3m-cookie.el

(autoload 'w3m-cookie-shutdown "emacs-w3m/w3m-cookie" "\
Save cookies, and reset cookies' data.

\(fn)" t nil)

(autoload 'w3m-cookie-set "emacs-w3m/w3m-cookie" "\
Register cookies which correspond to URL.
BEG and END should be an HTTP response header region on current buffer.

\(fn URL BEG END)" nil nil)

(autoload 'w3m-cookie-get "emacs-w3m/w3m-cookie" "\
Get a cookie field string which corresponds to the URL.

\(fn URL)" nil nil)

(autoload 'w3m-cookie "emacs-w3m/w3m-cookie" "\
Display cookies and enable you to manage them.

\(fn &optional NO-CACHE)" t nil)

(autoload 'w3m-about-cookie "emacs-w3m/w3m-cookie" "\
Make the html contents to display and to enable you to manage cookies.

\(fn URL &optional NO-DECODE NO-CACHE POST-DATA &rest ARGS)" nil nil)

;;;***

;;;### (autoloads (w3m-dtree w3m-about-dtree) "emacs-w3m/w3m-dtree"
;;;;;;  "emacs-w3m/w3m-dtree.el" (18964 36505))
;;; Generated autoloads from emacs-w3m/w3m-dtree.el

(autoload 'w3m-about-dtree "emacs-w3m/w3m-dtree" "\


\(fn URL &optional NODECODE ALLFILES &rest ARGS)" nil nil)

(autoload 'w3m-dtree "emacs-w3m/w3m-dtree" "\
Display directory tree on local file system.
If called with 'prefix argument', display all directorys and files.

\(fn ALLFILES PATH)" t nil)

;;;***

;;;### (autoloads (w3m-fb-mode) "emacs-w3m/w3m-fb" "emacs-w3m/w3m-fb.el"
;;;;;;  (17681 2386))
;;; Generated autoloads from emacs-w3m/w3m-fb.el

(defvar w3m-fb-mode nil "\
Non-nil if W3m-Fb mode is enabled.
See the command `w3m-fb-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `w3m-fb-mode'.")

(custom-autoload 'w3m-fb-mode "emacs-w3m/w3m-fb" nil)

(autoload 'w3m-fb-mode "emacs-w3m/w3m-fb" "\
Toggle W3M Frame Buffer mode.
This allows frame-local lists of buffers (tabs).

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (w3m-filter) "emacs-w3m/w3m-filter" "emacs-w3m/w3m-filter.el"
;;;;;;  (21140 25919))
;;; Generated autoloads from emacs-w3m/w3m-filter.el

(autoload 'w3m-filter "emacs-w3m/w3m-filter" "\
Apply filtering rule of URL against a content in this buffer.

\(fn URL)" nil nil)

;;;***

;;;### (autoloads (w3m-fontify-forms) "emacs-w3m/w3m-form" "emacs-w3m/w3m-form.el"
;;;;;;  (21138 63962))
;;; Generated autoloads from emacs-w3m/w3m-form.el

(autoload 'w3m-fontify-forms "emacs-w3m/w3m-form" "\
Process half-dumped data and fontify forms in this buffer.

\(fn)" nil nil)

;;;***

;;;### (autoloads (w3m-lnum-bookmark-add-this-url w3m-lnum-download-this-url
;;;;;;  w3m-lnum-print-this-url w3m-lnum-edit-this-url w3m-lnum-external-view-this-url
;;;;;;  w3m-lnum-save-image w3m-lnum-view-image w3m-lnum-toggle-inline-image
;;;;;;  w3m-lnum-universal w3m-lnum-follow w3m-lnum-goto w3m-lnum-mode)
;;;;;;  "emacs-w3m/w3m-lnum" "emacs-w3m/w3m-lnum.el" (21087 15965))
;;; Generated autoloads from emacs-w3m/w3m-lnum.el

(autoload 'w3m-lnum-mode "emacs-w3m/w3m-lnum" "\
Minor mode to extend point commands by using Conkeror style number selection.
With prefix ARG 0 disable battery included point functions, otherwise
enable them.  With no prefix ARG - toggle.

\(fn &optional ARG)" t nil)

(autoload 'w3m-lnum-goto "emacs-w3m/w3m-lnum" "\
Turn on link, image and form numbers and ask for one to go to.
0 corresponds to location url.

\(fn)" t nil)

(autoload 'w3m-lnum-follow "emacs-w3m/w3m-lnum" "\
Turn on link numbers, ask for one and execute appropriate action on it.
If link - visit it, when button - press, when input - activate it,
If image - toggle it.
With prefix ARG visit link in new session or don't move over
field/button/image on activation/push/toggle.
With `-' ARG, for link image - go to it and toggle it.
With -4 ARG, for link image - toggle it.
With double prefix ARG, prompt for url to visit.
With triple prefix ARG, prompt for url to visit in new session.

\(fn ARG)" t nil)

(autoload 'w3m-lnum-universal "emacs-w3m/w3m-lnum" "\
Turn on link numbers, ask for one and offer actions over it depending on selection type.
Actions may be selected either by hitting corresponding key,
pressing <return> over the action line or left clicking.

\(fn)" t nil)

(autoload 'w3m-lnum-toggle-inline-image "emacs-w3m/w3m-lnum" "\
If image at point, toggle it.
Otherwise turn on link numbers and toggle selected image.
With prefix ARG open url under image in new session.
If no such url, move over image and toggle it.

\(fn &optional ARG)" t nil)

(autoload 'w3m-lnum-view-image "emacs-w3m/w3m-lnum" "\
Display the image under point in the external viewer.
If no image at poing, turn on image numbers and display selected.
The viewer is defined in `w3m-content-type-alist' for every type of an
image.

\(fn)" t nil)

(autoload 'w3m-lnum-save-image "emacs-w3m/w3m-lnum" "\
Save the image under point to a file.
If no image at poing, turn on image numbers and save selected.
The default name will be the original name of the image.

\(fn)" t nil)

(autoload 'w3m-lnum-external-view-this-url "emacs-w3m/w3m-lnum" "\
Launch the external browser and display the link at point.
If no link at point, turn on link numbers and open selected externally.

\(fn)" t nil)

(autoload 'w3m-lnum-edit-this-url "emacs-w3m/w3m-lnum" "\
Edit the page linked from the anchor under the cursor.
If no such, turn on link numbers and edit selected.

\(fn)" t nil)

(autoload 'w3m-lnum-print-this-url "emacs-w3m/w3m-lnum" "\
Display the url under point in the echo area and put it into `kill-ring'.
If no url under point, activate numbering and select one.

\(fn)" t nil)

(autoload 'w3m-lnum-download-this-url "emacs-w3m/w3m-lnum" "\
Download the file or the page pointed to by the link under point.
If no point, activate numbering and select andchor to download.

\(fn)" t nil)

(autoload 'w3m-lnum-bookmark-add-this-url "emacs-w3m/w3m-lnum" "\
Add link under cursor to bookmarks.
If no link under point, activate numbering and ask for one.

\(fn)" t nil)

;;;***

;;;### (autoloads (w3m-namazu w3m-about-namazu) "emacs-w3m/w3m-namazu"
;;;;;;  "emacs-w3m/w3m-namazu.el" (18964 36505))
;;; Generated autoloads from emacs-w3m/w3m-namazu.el

(autoload 'w3m-about-namazu "emacs-w3m/w3m-namazu" "\


\(fn URL &optional NO-DECODE NO-CACHE &rest ARGS)" nil nil)

(autoload 'w3m-namazu "emacs-w3m/w3m-namazu" "\
Search indexed files with Namazu.

\(fn INDEX QUERY &optional RELOAD)" t nil)

;;;***

;;;### (autoloads (w3m-perldoc w3m-about-perldoc) "emacs-w3m/w3m-perldoc"
;;;;;;  "emacs-w3m/w3m-perldoc.el" (18197 61165))
;;; Generated autoloads from emacs-w3m/w3m-perldoc.el

(autoload 'w3m-about-perldoc "emacs-w3m/w3m-perldoc" "\


\(fn URL &optional NO-DECODE NO-CACHE &rest ARGS)" nil nil)

(autoload 'w3m-perldoc "emacs-w3m/w3m-perldoc" "\
View Perl documents.

\(fn DOCNAME)" t nil)

;;;***

;;;### (autoloads (w3m-search-uri-replace w3m-search-new-session
;;;;;;  w3m-search) "emacs-w3m/w3m-search" "emacs-w3m/w3m-search.el"
;;;;;;  (20697 1486))
;;; Generated autoloads from emacs-w3m/w3m-search.el

(autoload 'w3m-search "emacs-w3m/w3m-search" "\
Search QUERY using SEARCH-ENGINE.
When called interactively with a prefix argument, you can choose one of
the search engines defined in `w3m-search-engine-alist'.  Otherwise use
`w3m-search-default-engine'.
If Transient Mark mode, use the region as an initial string of query
and deactivate the mark.

\(fn SEARCH-ENGINE QUERY)" t nil)

(autoload 'w3m-search-new-session "emacs-w3m/w3m-search" "\
Like `w3m-search', but do the search in a new session.

\(fn SEARCH-ENGINE QUERY)" t nil)

(autoload 'w3m-search-uri-replace "emacs-w3m/w3m-search" "\
Generate query string for ENGINE from URI matched by last search.

\(fn URI ENGINE)" nil nil)

;;;***

;;;### (autoloads (w3m-session-last-crashed-session w3m-session-last-autosave-session
;;;;;;  w3m-setup-session-menu w3m-session-select w3m-session-crash-recovery-remove
;;;;;;  w3m-session-save) "emacs-w3m/w3m-session" "emacs-w3m/w3m-session.el"
;;;;;;  (20839 34704))
;;; Generated autoloads from emacs-w3m/w3m-session.el

(autoload 'w3m-session-save "emacs-w3m/w3m-session" "\
Save list of displayed session.

\(fn)" t nil)

(autoload 'w3m-session-crash-recovery-remove "emacs-w3m/w3m-session" "\
Remove crash recovery session set.

\(fn)" nil nil)

(autoload 'w3m-session-select "emacs-w3m/w3m-session" "\
Select session from session list.

\(fn)" t nil)

(autoload 'w3m-setup-session-menu "emacs-w3m/w3m-session" "\
Setup w3m session items in menubar.

\(fn)" nil nil)

(autoload 'w3m-session-last-autosave-session "emacs-w3m/w3m-session" "\


\(fn)" nil nil)

(autoload 'w3m-session-last-crashed-session "emacs-w3m/w3m-session" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads (erc-handle-irc-url erc erc-select-read-args) "erc/erc"
;;;;;;  "erc/erc.el" (21150 52007))
;;; Generated autoloads from erc/erc.el

(autoload 'erc-select-read-args "erc/erc" "\
Prompt the user for values of nick, server, port, and password.

\(fn)" nil nil)

(autoload 'erc "erc/erc" "\
ERC is a powerful, modular, and extensible IRC client.
This function is the main entry point for ERC.

It permits you to select connection parameters, and then starts ERC.

Non-interactively, it takes the keyword arguments
   (server (erc-compute-server))
   (port   (erc-compute-port))
   (nick   (erc-compute-nick))
   password
   (full-name (erc-compute-full-name)))

That is, if called with

   (erc :server \"irc.freenode.net\" :full-name \"Harry S Truman\")

then the server and full-name will be set to those values, whereas
`erc-compute-port', `erc-compute-nick' and `erc-compute-full-name' will
be invoked for the values of the other parameters.

\(fn &key (server (erc-compute-server)) (port (erc-compute-port)) (nick (erc-compute-nick)) PASSWORD (full-name (erc-compute-full-name)))" t nil)

(defalias 'erc-select 'erc)

(autoload 'erc-handle-irc-url "erc/erc" "\
Use ERC to IRC on HOST:PORT in CHANNEL as USER with PASSWORD.
If ERC is already connected to HOST:PORT, simply /join CHANNEL.
Otherwise, connect to HOST:PORT as USER and /join CHANNEL.

\(fn HOST PORT CHANNEL USER PASSWORD)" nil nil)

;;;***

;;;### (autoloads nil "erc/erc-autoaway" "erc/erc-autoaway.el" (21150
;;;;;;  52007))
;;; Generated autoloads from erc/erc-autoaway.el
 (autoload 'erc-autoaway-mode "erc-autoaway")

;;;***

;;;### (autoloads nil "erc/erc-bbdb" "erc/erc-bbdb.el" (21150 52007))
;;; Generated autoloads from erc/erc-bbdb.el
 (autoload 'erc-bbdb-mode "erc-bbdb")

;;;***

;;;### (autoloads nil "erc/erc-button" "erc/erc-button.el" (21150
;;;;;;  52007))
;;; Generated autoloads from erc/erc-button.el
 (autoload 'erc-button-mode "erc-button" nil t)

;;;***

;;;### (autoloads nil "erc/erc-capab" "erc/erc-capab.el" (21150 52007))
;;; Generated autoloads from erc/erc-capab.el
 (autoload 'erc-capab-identify-mode "erc-capab" nil t)

;;;***

;;;### (autoloads (erc-chess-ctcp-query-handler erc-cmd-CHESS) "erc/erc-chess"
;;;;;;  "erc/erc-chess.el" (21150 52007))
;;; Generated autoloads from erc/erc-chess.el

(defvar erc-ctcp-query-CHESS-hook '(erc-chess-ctcp-query-handler))

(autoload 'erc-cmd-CHESS "erc/erc-chess" "\
Initiate a chess game via CTCP to NICK.
NICK should be the first and only arg to /chess

\(fn LINE &optional FORCE)" nil nil)

(autoload 'erc-chess-ctcp-query-handler "erc/erc-chess" "\


\(fn PROC NICK LOGIN HOST TO MSG)" nil nil)

;;;***

;;;### (autoloads nil "erc/erc-compat" "erc/erc-compat.el" (21150
;;;;;;  52007))
;;; Generated autoloads from erc/erc-compat.el
 (autoload 'erc-define-minor-mode "erc-compat")

;;;***

;;;### (autoloads (erc-ctcp-query-DCC pcomplete/erc-mode/DCC erc-cmd-DCC)
;;;;;;  "erc/erc-dcc" "erc/erc-dcc.el" (21150 52007))
;;; Generated autoloads from erc/erc-dcc.el
 (autoload 'erc-dcc-mode "erc-dcc")

(autoload 'erc-cmd-DCC "erc/erc-dcc" "\
Parser for /dcc command.
This figures out the dcc subcommand and calls the appropriate routine to
handle it.  The function dispatched should be named \"erc-dcc-do-FOO-command\",
where FOO is one of CLOSE, GET, SEND, LIST, CHAT, etc.

\(fn CMD &rest ARGS)" nil nil)

(autoload 'pcomplete/erc-mode/DCC "erc/erc-dcc" "\
Provides completion for the /DCC command.

\(fn)" nil nil)

(defvar erc-ctcp-query-DCC-hook '(erc-ctcp-query-DCC) "\
Hook variable for CTCP DCC queries")

(autoload 'erc-ctcp-query-DCC "erc/erc-dcc" "\
The function called when a CTCP DCC request is detected by the client.
It examines the DCC subcommand, and calls the appropriate routine for
that subcommand.

\(fn PROC NICK LOGIN HOST TO QUERY)" nil nil)

;;;***

;;;### (autoloads (erc-ezb-initialize erc-ezb-select-session erc-ezb-select
;;;;;;  erc-ezb-add-session erc-ezb-end-of-session-list erc-ezb-init-session-list
;;;;;;  erc-ezb-identify erc-ezb-notice-autodetect erc-ezb-lookup-action
;;;;;;  erc-ezb-get-login erc-cmd-ezb) "erc/erc-ezbounce" "erc/erc-ezbounce.el"
;;;;;;  (21150 52007))
;;; Generated autoloads from erc/erc-ezbounce.el

(autoload 'erc-cmd-ezb "erc/erc-ezbounce" "\
Send EZB commands to the EZBouncer verbatim.

\(fn LINE &optional FORCE)" nil nil)

(autoload 'erc-ezb-get-login "erc/erc-ezbounce" "\
Return an appropriate EZBounce login for SERVER and PORT.
Look up entries in `erc-ezb-login-alist'. If the username or password
in the alist is `nil', prompt for the appropriate values.

\(fn SERVER PORT)" nil nil)

(autoload 'erc-ezb-lookup-action "erc/erc-ezbounce" "\


\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-notice-autodetect "erc/erc-ezbounce" "\
React on an EZBounce NOTICE request.

\(fn PROC PARSED)" nil nil)

(autoload 'erc-ezb-identify "erc/erc-ezbounce" "\
Identify to the EZBouncer server.

\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-init-session-list "erc/erc-ezbounce" "\
Reset the EZBounce session list to nil.

\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-end-of-session-list "erc/erc-ezbounce" "\
Indicate the end of the EZBounce session listing.

\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-add-session "erc/erc-ezbounce" "\
Add an EZBounce session to the session list.

\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-select "erc/erc-ezbounce" "\
Select an IRC server to use by EZBounce, in ERC style.

\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-select-session "erc/erc-ezbounce" "\
Select a detached EZBounce session.

\(fn)" nil nil)

(autoload 'erc-ezb-initialize "erc/erc-ezbounce" "\
Add EZBouncer convenience functions to ERC.

\(fn)" nil nil)

;;;***

;;;### (autoloads (erc-fill) "erc/erc-fill" "erc/erc-fill.el" (21150
;;;;;;  52007))
;;; Generated autoloads from erc/erc-fill.el
 (autoload 'erc-fill-mode "erc-fill" nil t)

(autoload 'erc-fill "erc/erc-fill" "\
Fill a region using the function referenced in `erc-fill-function'.
You can put this on `erc-insert-modify-hook' and/or `erc-send-modify-hook'.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "erc/erc-hecomplete" "erc/erc-hecomplete.el"
;;;;;;  (21150 52007))
;;; Generated autoloads from erc/erc-hecomplete.el
 (autoload 'erc-hecomplete-mode "erc-hecomplete" nil t)

;;;***

;;;### (autoloads (erc-identd-stop erc-identd-start) "erc/erc-identd"
;;;;;;  "erc/erc-identd.el" (21150 52007))
;;; Generated autoloads from erc/erc-identd.el
 (autoload 'erc-identd-mode "erc-identd")

(autoload 'erc-identd-start "erc/erc-identd" "\
Start an identd server listening to port 8113.
Port 113 (auth) will need to be redirected to port 8113 on your
machine -- using iptables, or a program like redir which can be
run from inetd.  The idea is to provide a simple identd server
when you need one, without having to install one globally on your
system.

\(fn &optional PORT)" t nil)

(autoload 'erc-identd-stop "erc/erc-identd" "\


\(fn &rest IGNORE)" t nil)

;;;***

;;;### (autoloads (erc-create-imenu-index) "erc/erc-imenu" "erc/erc-imenu.el"
;;;;;;  (21150 52007))
;;; Generated autoloads from erc/erc-imenu.el

(autoload 'erc-create-imenu-index "erc/erc-imenu" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "erc/erc-join" "erc/erc-join.el" (21150 52007))
;;; Generated autoloads from erc/erc-join.el
 (autoload 'erc-autojoin-mode "erc-join" nil t)

;;;***

;;;### (autoloads nil "erc/erc-list" "erc/erc-list.el" (21150 52007))
;;; Generated autoloads from erc/erc-list.el
 (autoload 'erc-list-mode "erc-list")

;;;***

;;;### (autoloads (erc-chanlist erc-list-channels) "erc/erc-list-old"
;;;;;;  "erc/erc-list-old.el" (21150 52007))
;;; Generated autoloads from erc/erc-list-old.el
 (autoload 'erc-list-old-mode "erc-list-old")

(autoload 'erc-list-channels "erc/erc-list-old" "\
Display a buffer containing a list of channels on the current server.
Optional argument CHANNEL specifies a single channel to list (instead of every
available channel).

\(fn &rest CHANNEL)" t nil)

(autoload 'erc-chanlist "erc/erc-list-old" "\
Show a channel listing of the current server in a special mode.
Please note that this function only works with IRC servers which conform
to RFC and send the LIST header (#321) at start of list transmission.

\(fn &optional CHANNELS)" t nil)

;;;***

;;;### (autoloads (erc-save-buffer-in-logs erc-logging-enabled) "erc/erc-log"
;;;;;;  "erc/erc-log.el" (21150 52007))
;;; Generated autoloads from erc/erc-log.el
 (autoload 'erc-log-mode "erc-log" nil t)

(autoload 'erc-logging-enabled "erc/erc-log" "\
Return non-nil if logging is enabled for BUFFER.
If BUFFER is nil, the value of `current-buffer' is used.
Logging is enabled if `erc-log-channels-directory' is non-nil, the directory
is writeable (it will be created as necessary) and
`erc-enable-logging' returns a non-nil value.

\(fn &optional BUFFER)" nil nil)

(autoload 'erc-save-buffer-in-logs "erc/erc-log" "\
Append BUFFER contents to the log file, if logging is enabled.
If BUFFER is not provided, current buffer is used.
Logging is enabled if `erc-logging-enabled' returns non-nil.

This is normally done on exit, to save the unsaved portion of the
buffer, since only the text that runs off the buffer limit is logged
automatically.

You can save every individual message by putting this function on
`erc-insert-post-hook'.

\(fn &optional BUFFER)" t nil)

;;;***

;;;### (autoloads (erc-delete-dangerous-host erc-add-dangerous-host
;;;;;;  erc-delete-keyword erc-add-keyword erc-delete-fool erc-add-fool
;;;;;;  erc-delete-pal erc-add-pal) "erc/erc-match" "erc/erc-match.el"
;;;;;;  (21150 52007))
;;; Generated autoloads from erc/erc-match.el
 (autoload 'erc-match-mode "erc-match")

(autoload 'erc-add-pal "erc/erc-match" "\
Add pal interactively to `erc-pals'.

\(fn)" t nil)

(autoload 'erc-delete-pal "erc/erc-match" "\
Delete pal interactively to `erc-pals'.

\(fn)" t nil)

(autoload 'erc-add-fool "erc/erc-match" "\
Add fool interactively to `erc-fools'.

\(fn)" t nil)

(autoload 'erc-delete-fool "erc/erc-match" "\
Delete fool interactively to `erc-fools'.

\(fn)" t nil)

(autoload 'erc-add-keyword "erc/erc-match" "\
Add keyword interactively to `erc-keywords'.

\(fn)" t nil)

(autoload 'erc-delete-keyword "erc/erc-match" "\
Delete keyword interactively to `erc-keywords'.

\(fn)" t nil)

(autoload 'erc-add-dangerous-host "erc/erc-match" "\
Add dangerous-host interactively to `erc-dangerous-hosts'.

\(fn)" t nil)

(autoload 'erc-delete-dangerous-host "erc/erc-match" "\
Delete dangerous-host interactively to `erc-dangerous-hosts'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "erc/erc-menu" "erc/erc-menu.el" (21150 52007))
;;; Generated autoloads from erc/erc-menu.el
 (autoload 'erc-menu-mode "erc-menu" nil t)

;;;***

;;;### (autoloads (erc-cmd-WHOLEFT) "erc/erc-netsplit" "erc/erc-netsplit.el"
;;;;;;  (21150 52007))
;;; Generated autoloads from erc/erc-netsplit.el
 (autoload 'erc-netsplit-mode "erc-netsplit")

(autoload 'erc-cmd-WHOLEFT "erc/erc-netsplit" "\
Show who's gone.

\(fn)" nil nil)

;;;***

;;;### (autoloads (erc-server-select erc-determine-network) "erc/erc-networks"
;;;;;;  "erc/erc-networks.el" (21150 52007))
;;; Generated autoloads from erc/erc-networks.el

(autoload 'erc-determine-network "erc/erc-networks" "\
Return the name of the network or \"Unknown\" as a symbol.  Use the
server parameter NETWORK if provided, otherwise parse the server name and
search for a match in `erc-networks-alist'.

\(fn)" nil nil)

(autoload 'erc-server-select "erc/erc-networks" "\
Interactively select a server to connect to using `erc-server-alist'.

\(fn)" t nil)

;;;***

;;;### (autoloads (pcomplete/erc-mode/NOTIFY erc-cmd-NOTIFY) "erc/erc-notify"
;;;;;;  "erc/erc-notify.el" (21150 52007))
;;; Generated autoloads from erc/erc-notify.el
 (autoload 'erc-notify-mode "erc-notify" nil t)

(autoload 'erc-cmd-NOTIFY "erc/erc-notify" "\
Change `erc-notify-list' or list current notify-list members online.
Without args, list the current list of notificated people online,
with args, toggle notify status of people.

\(fn &rest ARGS)" nil nil)

(autoload 'pcomplete/erc-mode/NOTIFY "erc/erc-notify" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "erc/erc-page" "erc/erc-page.el" (21150 52007))
;;; Generated autoloads from erc/erc-page.el
 (autoload 'erc-page-mode "erc-page")

;;;***

;;;### (autoloads nil "erc/erc-pcomplete" "erc/erc-pcomplete.el"
;;;;;;  (21150 52007))
;;; Generated autoloads from erc/erc-pcomplete.el
 (autoload 'erc-completion-mode "erc-pcomplete" nil t)

;;;***

;;;### (autoloads nil "erc/erc-replace" "erc/erc-replace.el" (21150
;;;;;;  52007))
;;; Generated autoloads from erc/erc-replace.el
 (autoload 'erc-replace-mode "erc-replace")

;;;***

;;;### (autoloads nil "erc/erc-ring" "erc/erc-ring.el" (21150 52007))
;;; Generated autoloads from erc/erc-ring.el
 (autoload 'erc-ring-mode "erc-ring" nil t)

;;;***

;;;### (autoloads (erc-nickserv-identify erc-nickserv-identify-mode)
;;;;;;  "erc/erc-services" "erc/erc-services.el" (21150 52007))
;;; Generated autoloads from erc/erc-services.el
 (autoload 'erc-services-mode "erc-services" nil t)

(autoload 'erc-nickserv-identify-mode "erc/erc-services" "\
Set up hooks according to which MODE the user has chosen.

\(fn MODE)" t nil)

(autoload 'erc-nickserv-identify "erc/erc-services" "\
Send an \"identify <PASSWORD>\" message to NickServ.
When called interactively, read the password using `read-passwd'.

\(fn PASSWORD)" t nil)

;;;***

;;;### (autoloads nil "erc/erc-sound" "erc/erc-sound.el" (21150 52007))
;;; Generated autoloads from erc/erc-sound.el
 (autoload 'erc-sound-mode "erc-sound")

;;;***

;;;### (autoloads (erc-speedbar-browser) "erc/erc-speedbar" "erc/erc-speedbar.el"
;;;;;;  (21150 52007))
;;; Generated autoloads from erc/erc-speedbar.el

(autoload 'erc-speedbar-browser "erc/erc-speedbar" "\
Initialize speedbar to display an ERC browser.
This will add a speedbar major display mode.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "erc/erc-spelling" "erc/erc-spelling.el" (21150
;;;;;;  52007))
;;; Generated autoloads from erc/erc-spelling.el
 (autoload 'erc-spelling-mode "erc-spelling" nil t)

;;;***

;;;### (autoloads nil "erc/erc-stamp" "erc/erc-stamp.el" (21150 52007))
;;; Generated autoloads from erc/erc-stamp.el
 (autoload 'erc-timestamp-mode "erc-stamp" nil t)

;;;***

;;;### (autoloads (erc-track-minor-mode) "erc/erc-track" "erc/erc-track.el"
;;;;;;  (21150 52007))
;;; Generated autoloads from erc/erc-track.el

(defvar erc-track-minor-mode nil "\
Non-nil if Erc-Track minor mode is enabled.
See the command `erc-track-minor-mode' for a description of this minor mode.")

(custom-autoload 'erc-track-minor-mode "erc/erc-track" nil)

(autoload 'erc-track-minor-mode "erc/erc-track" "\
Global minor mode for tracking ERC buffers and showing activity in the
mode line.

This exists for the sole purpose of providing the C-c C-SPC and
C-c C-@ keybindings.  Make sure that you have enabled the track
module, otherwise the keybindings will not do anything useful.

\(fn &optional ARG)" t nil)
 (autoload 'erc-track-mode "erc-track" nil t)

;;;***

;;;### (autoloads (erc-truncate-buffer erc-truncate-buffer-to-size)
;;;;;;  "erc/erc-truncate" "erc/erc-truncate.el" (21150 52007))
;;; Generated autoloads from erc/erc-truncate.el
 (autoload 'erc-truncate-mode "erc-truncate" nil t)

(autoload 'erc-truncate-buffer-to-size "erc/erc-truncate" "\
Truncates the buffer to the size SIZE.
If BUFFER is not provided, the current buffer is assumed.  The deleted
region is logged if `erc-logging-enabled' returns non-nil.

\(fn SIZE &optional BUFFER)" nil nil)

(autoload 'erc-truncate-buffer "erc/erc-truncate" "\
Truncates the current buffer to `erc-max-buffer-size'.
Meant to be used in hooks, like `erc-insert-post-hook'.

\(fn)" t nil)

;;;***

;;;### (autoloads (erc-xdcc-add-file) "erc/erc-xdcc" "erc/erc-xdcc.el"
;;;;;;  (21150 52007))
;;; Generated autoloads from erc/erc-xdcc.el
 (autoload 'erc-xdcc-mode "erc-xdcc")

(autoload 'erc-xdcc-add-file "erc/erc-xdcc" "\
Add a file to `erc-xdcc-files'.

\(fn FILE)" t nil)

;;;***

;;;### (autoloads (facebook-status facebook-users-set-status facebook-login)
;;;;;;  "facebook/facebook" "facebook/facebook.el" (21150 52143))
;;; Generated autoloads from facebook/facebook.el

(autoload 'facebook-login "facebook/facebook" "\


\(fn)" t nil)

(autoload 'facebook-users-set-status "facebook/facebook" "\


\(fn STATUS_MESSAGE)" t nil)

(autoload 'facebook-status "facebook/facebook" "\


\(fn STATUS_MESSAGE)" t nil)

;;;***

;;;### (autoloads (go-download-play godoc gofmt-before-save go-mode)
;;;;;;  "go-mode/go-mode" "go-mode/go-mode.el" (21237 47564))
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
- `godoc'
- `go-import-add'
- `go-remove-unused-imports'
- `go-goto-imports'
- `go-play-buffer' and `go-play-region'
- `go-download-play'
- `godef-describe' and `godef-jump'
- `go-coverage'

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

go get code.google.com/p/rog-go/exp/cmd/godef


If you're looking for even more integration with Go, namely
on-the-fly syntax checking, auto-completion and snippets, it is
recommended that you look at goflymake
\(https://github.com/dougm/goflymake), gocode
\(https://github.com/nsf/gocode), go-eldoc
\(github.com/syohex/emacs-go-eldoc) and yasnippet-go
\(https://github.com/dominikh/yasnippet-go)

\(fn)" t nil)

(add-to-list 'auto-mode-alist (cons "\\.go\\'" 'go-mode))

(autoload 'gofmt-before-save "go-mode/go-mode" "\
Add this to .emacs to run gofmt on the current buffer when saving:
 (add-hook 'before-save-hook 'gofmt-before-save).

Note that this will cause go-mode to get loaded the first time
you save any file, kind of defeating the point of autoloading.

\(fn)" t nil)

(autoload 'godoc "go-mode/go-mode" "\
Show go documentation for a query, much like M-x man.

\(fn QUERY)" t nil)

(autoload 'go-download-play "go-mode/go-mode" "\
Downloads a paste from the playground and inserts it in a Go
buffer. Tries to look for a URL at point.

\(fn URL)" t nil)

;;;***

;;;### (autoloads (graphviz-dot-mode) "graphviz-dot-mode/graphviz-dot-mode"
;;;;;;  "graphviz-dot-mode/graphviz-dot-mode.el" (21158 26505))
;;; Generated autoloads from graphviz-dot-mode/graphviz-dot-mode.el

(autoload 'graphviz-dot-mode "graphviz-dot-mode/graphviz-dot-mode" "\
Major mode for the dot language. \\<graphviz-dot-mode-map> 
TAB indents for graph lines. 

\\[graphviz-dot-indent-graph]	- Indentaion function.
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

;;;***

;;;### (autoloads (inferior-js-mode switch-to-js js-load-file-and-go
;;;;;;  js-load-file js-send-buffer-and-go js-send-buffer js-send-last-sexp
;;;;;;  js-send-last-sexp-and-go js-send-region-and-go js-send-region
;;;;;;  run-js) "js-comint/js-comint" "js-comint/js-comint.el" (21151
;;;;;;  9635))
;;; Generated autoloads from js-comint/js-comint.el

(autoload 'run-js "js-comint/js-comint" "\
Run an inferior Javascript process, input and output via buffer `*js*'.
If there is a process already running in `*js*', switch to that buffer.
With argument, allows you to edit the command line (default is value
of `inferior-js-program-command').
Runs the hook `inferior-js-mode-hook' (after the `comint-mode-hook'
is run).
\(Type \\[describe-mode] in the process buffer for a list of commands.)

\(fn CMD &optional DONT-SWITCH-P)" t nil)

(autoload 'js-send-region "js-comint/js-comint" "\
Send the current region to the inferior Javascript process.

\(fn START END)" t nil)

(autoload 'js-send-region-and-go "js-comint/js-comint" "\
Send the current region to the inferior Javascript process.

\(fn START END)" t nil)

(autoload 'js-send-last-sexp-and-go "js-comint/js-comint" "\
Send the previous sexp to the inferior Js process.

\(fn)" t nil)

(autoload 'js-send-last-sexp "js-comint/js-comint" "\
Send the previous sexp to the inferior Javascript process.

\(fn)" t nil)

(autoload 'js-send-buffer "js-comint/js-comint" "\
Send the buffer to the inferior Javascript process.

\(fn)" t nil)

(autoload 'js-send-buffer-and-go "js-comint/js-comint" "\
Send the buffer to the inferior Javascript process.

\(fn)" t nil)

(autoload 'js-load-file "js-comint/js-comint" "\
Load a file in the javascript interpreter.

\(fn FILENAME)" t nil)

(autoload 'js-load-file-and-go "js-comint/js-comint" "\
Load a file in the javascript interpreter.

\(fn FILENAME)" t nil)

(autoload 'switch-to-js "js-comint/js-comint" "\
Switch to the javascript process buffer.
With argument, position cursor at end of buffer.

\(fn EOB-P)" t nil)

(autoload 'inferior-js-mode "js-comint/js-comint" "\
Major mode for interacting with an inferior javascript process.

The following commands are available:
\\{inferior-js-mode-map}

A javascript process can be fired up with M-x run-js.

Customization: Entry to this mode runs the hooks on comint-mode-hook and
inferior-js-mode-hook (in that order).

You can send text to the inferior Javascript process from othber buffers containing
Javascript source.
    switch-to-js switches the current buffer to the Javascript process buffer.
    js-send-region sends the current region to the Javascript process.


\(fn)" t nil)

;;;***

;;;### (autoloads (js2-imenu-extras-mode js2-imenu-extras-setup)
;;;;;;  "js2-mode/js2-imenu-extras" "js2-mode/js2-imenu-extras.el"
;;;;;;  (21150 52662))
;;; Generated autoloads from js2-mode/js2-imenu-extras.el

(autoload 'js2-imenu-extras-setup "js2-mode/js2-imenu-extras" "\


\(fn)" nil nil)

(autoload 'js2-imenu-extras-mode "js2-mode/js2-imenu-extras" "\
Toggle Imenu support for frameworks and structural patterns.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (js2-mode js2-minor-mode) "js2-mode/js2-mode" "js2-mode/js2-mode.el"
;;;;;;  (21150 52662))
;;; Generated autoloads from js2-mode/js2-mode.el

(autoload 'js2-minor-mode "js2-mode/js2-mode" "\
Minor mode for running js2 as a background linter.
This allows you to use a different major mode for JavaScript editing,
such as `espresso-mode', while retaining the asynchronous error/warning
highlighting features of `js2-mode'.

\(fn &optional ARG)" t nil)

(autoload 'js2-mode "js2-mode/js2-mode" "\
Major mode for editing JavaScript code.

\(fn)" t nil)

;;;***

;;;### (autoloads (nxml-web-mode html-erb-mode) "mmm-mode/mmm-erb"
;;;;;;  "mmm-mode/mmm-erb.el" (21149 21716))
;;; Generated autoloads from mmm-mode/mmm-erb.el

(autoload 'html-erb-mode "mmm-mode/mmm-erb" "\


\(fn)" t nil)

(autoload 'nxml-web-mode "mmm-mode/mmm-erb" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (mmm-add-classes) "mmm-mode/mmm-vars" "mmm-mode/mmm-vars.el"
;;;;;;  (21149 21716))
;;; Generated autoloads from mmm-mode/mmm-vars.el

(autoload 'mmm-add-classes "mmm-mode/mmm-vars" "\
Add the submode classes CLASSES to `mmm-classes-alist'.

\(fn CLASSES)" nil nil)

;;;***

;;;### (autoloads nil "muse/lisp/muse" "muse/lisp/muse.el" (21158
;;;;;;  24181))
;;; Generated autoloads from muse/lisp/muse.el
 (add-to-list 'auto-mode-alist '("\\.muse\\'" . muse-mode-choose-mode))

;;;***

;;;### (autoloads (muse-blosxom-new-entry) "muse/lisp/muse-blosxom"
;;;;;;  "muse/lisp/muse-blosxom.el" (21158 24181))
;;; Generated autoloads from muse/lisp/muse-blosxom.el

(autoload 'muse-blosxom-new-entry "muse/lisp/muse-blosxom" "\
Start a new blog entry with given CATEGORY.
The filename of the blog entry is derived from TITLE.
The page will be initialized with the current date and TITLE.

\(fn CATEGORY TITLE)" t nil)

;;;***

;;;### (autoloads (muse-colors-toggle-inline-images) "muse/lisp/muse-colors"
;;;;;;  "muse/lisp/muse-colors.el" (21158 24181))
;;; Generated autoloads from muse/lisp/muse-colors.el

(autoload 'muse-colors-toggle-inline-images "muse/lisp/muse-colors" "\
Toggle display of inlined images on/off.

\(fn)" t nil)

;;;***

;;;### (autoloads (muse-import-docbook-files muse-import-docbook)
;;;;;;  "muse/lisp/muse-import-docbook" "muse/lisp/muse-import-docbook.el"
;;;;;;  (21158 24181))
;;; Generated autoloads from muse/lisp/muse-import-docbook.el

(autoload 'muse-import-docbook "muse/lisp/muse-import-docbook" "\
Convert the Docbook buffer SRC to Muse, writing output in the DEST buffer.

\(fn SRC DEST)" t nil)

(autoload 'muse-import-docbook-files "muse/lisp/muse-import-docbook" "\
Convert the Docbook file SRC to Muse, writing output to the DEST file.

\(fn SRC DEST)" t nil)

;;;***

;;;### (autoloads (muse-import-latex) "muse/lisp/muse-import-latex"
;;;;;;  "muse/lisp/muse-import-latex.el" (21158 24181))
;;; Generated autoloads from muse/lisp/muse-import-latex.el

(autoload 'muse-import-latex "muse/lisp/muse-import-latex" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (muse-list-edit-minor-mode muse-insert-tag muse-index
;;;;;;  muse-find-backlinks muse-search muse-search-with-command
;;;;;;  muse-what-changed muse-previous-reference muse-next-reference
;;;;;;  muse-follow-name-at-point-other-window muse-follow-name-at-point
;;;;;;  muse-browse-result muse-edit-link-at-point muse-insert-relative-link-to-file
;;;;;;  muse-decrease-list-item-indentation muse-increase-list-item-indentation
;;;;;;  muse-insert-list-item muse-mode-choose-mode muse-mode) "muse/lisp/muse-mode"
;;;;;;  "muse/lisp/muse-mode.el" (21158 24181))
;;; Generated autoloads from muse/lisp/muse-mode.el

(autoload 'muse-mode "muse/lisp/muse-mode" "\
Muse is an Emacs mode for authoring and publishing documents.
\\{muse-mode-map}

\(fn)" t nil)

(autoload 'muse-mode-choose-mode "muse/lisp/muse-mode" "\
Turn the proper Emacs Muse related mode on for this file.

\(fn)" nil nil)

(autoload 'muse-insert-list-item "muse/lisp/muse-mode" "\
Insert a list item at the current point, taking into account
your current list type and indentation level.

\(fn)" t nil)

(autoload 'muse-increase-list-item-indentation "muse/lisp/muse-mode" "\
Increase the indentation of the current list item.

\(fn)" t nil)

(autoload 'muse-decrease-list-item-indentation "muse/lisp/muse-mode" "\
Decrease the indentation of the current list item.

\(fn)" t nil)

(autoload 'muse-insert-relative-link-to-file "muse/lisp/muse-mode" "\
Insert a relative link to a file, with optional description, at point.

\(fn)" t nil)

(autoload 'muse-edit-link-at-point "muse/lisp/muse-mode" "\
Edit the current link.
Do not rename the page originally referred to.

\(fn)" t nil)

(autoload 'muse-browse-result "muse/lisp/muse-mode" "\
Visit the current page's published result.

\(fn STYLE &optional OTHER-WINDOW)" t nil)

(autoload 'muse-follow-name-at-point "muse/lisp/muse-mode" "\
Visit the link at point.

\(fn &optional OTHER-WINDOW)" t nil)

(autoload 'muse-follow-name-at-point-other-window "muse/lisp/muse-mode" "\
Visit the link at point in other window.

\(fn)" t nil)

(autoload 'muse-next-reference "muse/lisp/muse-mode" "\
Move forward to next Muse link or URL, cycling if necessary.

\(fn)" t nil)

(autoload 'muse-previous-reference "muse/lisp/muse-mode" "\
Move backward to the next Muse link or URL, cycling if necessary.
In case of Emacs x <= 21 and ignoring of intangible properties (see
`muse-mode-intangible-links').

This function is not entirely accurate, but it's close enough.

\(fn)" t nil)

(autoload 'muse-what-changed "muse/lisp/muse-mode" "\
Show the unsaved changes that have been made to the current file.

\(fn)" t nil)

(autoload 'muse-search-with-command "muse/lisp/muse-mode" "\
Search for the given TEXT string in the project directories
using the specified command.

\(fn TEXT)" t nil)

(autoload 'muse-search "muse/lisp/muse-mode" "\
Search for the given TEXT using the default grep command.

\(fn)" t nil)

(autoload 'muse-find-backlinks "muse/lisp/muse-mode" "\
Grep for the current pagename in all the project directories.

\(fn)" t nil)

(autoload 'muse-index "muse/lisp/muse-mode" "\
Display an index of all known Muse pages.

\(fn)" t nil)

(autoload 'muse-insert-tag "muse/lisp/muse-mode" "\
Insert a tag interactively with a blank line after it.

\(fn TAG)" t nil)

(autoload 'muse-list-edit-minor-mode "muse/lisp/muse-mode" "\
This is a global minor mode for editing files with lists.
It is meant to be used with other major modes, and not with Muse mode.

Interactively, with no prefix argument, toggle the mode.
With universal prefix ARG turn mode on.
With zero or negative ARG turn mode off.

This minor mode provides the Muse keybindings for editing lists,
and support for filling lists properly.

It recognizes not only Muse-style lists, which use the \"-\"
character or numbers, but also lists that use asterisks or plus
signs.  This should make the minor mode generally useful.

Definition lists and footnotes are also recognized.

Note that list items may omit leading spaces, for compatibility
with modes that set `left-margin', such as
`debian-changelog-mode'.

\\{muse-list-edit-minor-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (muse-project-publish muse-project-publish-this-file
;;;;;;  muse-project-find-file) "muse/lisp/muse-project" "muse/lisp/muse-project.el"
;;;;;;  (21158 24181))
;;; Generated autoloads from muse/lisp/muse-project.el

(autoload 'muse-project-find-file "muse/lisp/muse-project" "\
Open the Muse page given by NAME in PROJECT.
If COMMAND is non-nil, it is the function used to visit the file.
If DIRECTORY is non-nil, it is the directory in which the page
will be created if it does not already exist.  Otherwise, the
first directory within the project's fileset is used.

\(fn NAME PROJECT &optional COMMAND DIRECTORY)" t nil)

(autoload 'muse-project-publish-this-file "muse/lisp/muse-project" "\
Publish the currently-visited file according to `muse-project-alist',
prompting if more than one style applies.

If FORCE is given, publish the file even if it is up-to-date.

If STYLE is given, use that publishing style rather than
prompting for one.

\(fn &optional FORCE STYLE)" t nil)

(autoload 'muse-project-publish "muse/lisp/muse-project" "\
Publish the pages of PROJECT that need publishing.

\(fn PROJECT &optional FORCE)" t nil)

;;;***

;;;### (autoloads (muse-browse-url) "muse/lisp/muse-protocols" "muse/lisp/muse-protocols.el"
;;;;;;  (21158 24181))
;;; Generated autoloads from muse/lisp/muse-protocols.el

(autoload 'muse-browse-url "muse/lisp/muse-protocols" "\
Handle URL with the function specified in `muse-url-protocols'.
If OTHER-WINDOW is non-nil, open in a different window.

\(fn URL &optional OTHER-WINDOW)" t nil)

;;;***

;;;### (autoloads (muse-publish-this-file muse-publish-file muse-publish-region)
;;;;;;  "muse/lisp/muse-publish" "muse/lisp/muse-publish.el" (21158
;;;;;;  24181))
;;; Generated autoloads from muse/lisp/muse-publish.el

(autoload 'muse-publish-region "muse/lisp/muse-publish" "\
Apply the given STYLE's markup rules to the given region.
The result is placed in a new buffer that includes TITLE in its name.

\(fn BEG END &optional TITLE STYLE)" t nil)

(autoload 'muse-publish-file "muse/lisp/muse-publish" "\
Publish the given FILE in a particular STYLE to OUTPUT-DIR.
If the argument FORCE is nil, each file is only published if it is
newer than the published version.  If the argument FORCE is non-nil,
the file is published no matter what.

\(fn FILE STYLE &optional OUTPUT-DIR FORCE)" t nil)

(autoload 'muse-publish-this-file "muse/lisp/muse-publish" "\
Publish the currently-visited file.
Prompt for both the STYLE and OUTPUT-DIR if they are not
supplied.

\(fn STYLE OUTPUT-DIR &optional FORCE)" t nil)

;;;***

;;;### (autoloads (php-mode php-extra-constants php) "php-mode/php-mode"
;;;;;;  "php-mode/php-mode.el" (21150 52879))
;;; Generated autoloads from php-mode/php-mode.el

(let ((loads (get 'php 'custom-loads))) (if (member '"php-mode/php-mode" loads) nil (put 'php 'custom-loads (cons '"php-mode/php-mode" loads))))

(defvar php-extra-constants 'nil "\
A list of additional strings to treat as PHP constants.")

(custom-autoload 'php-extra-constants "php-mode/php-mode" t)

(add-to-list 'interpreter-mode-alist (cons "php" 'php-mode))

(autoload 'php-mode "php-mode/php-mode" "\
Major mode for editing PHP code.

\\{php-mode-map}

\(fn)" t nil)

(dolist (pattern '("\\.php[s345t]?\\'" "\\.phtml\\'" "Amkfile" "\\.amk$")) (add-to-list 'auto-mode-alist `(,pattern . php-mode) t))

;;;***

;;;### (autoloads (twit) "twittering-mode/twittering-mode" "twittering-mode/twittering-mode.el"
;;;;;;  (21150 58337))
;;; Generated autoloads from twittering-mode/twittering-mode.el

(autoload 'twit "twittering-mode/twittering-mode" "\
Start twittering-mode.

\(fn)" t nil)

;;;***

;;;### (autoloads (wcy-complete) "wcy-complete/wcy-complete" "wcy-complete/wcy-complete.el"
;;;;;;  (21158 40426))
;;; Generated autoloads from wcy-complete/wcy-complete.el

(autoload 'wcy-complete "wcy-complete/wcy-complete" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil "wcy-desktop/wcy-desktop" "wcy-desktop/wcy-desktop.el"
;;;;;;  (21158 40491))
;;; Generated autoloads from wcy-desktop/wcy-desktop.el

(defvar wcy-desktop-file-name "~/.wcy_desktop_save")

;;;***

;;;### (autoloads (dln-window-configuration-change-function dln-window-scroll-function
;;;;;;  dln-after-change-function dln-undisplay dln-display dln-core
;;;;;;  wcy-display-line-number-off wcy-display-line-number-on wcy-display-line-number-mode)
;;;;;;  "wcy-display-line-number/wcy-display-line-number" "wcy-display-line-number/wcy-display-line-number.el"
;;;;;;  (21158 40572))
;;; Generated autoloads from wcy-display-line-number/wcy-display-line-number.el

(autoload 'wcy-display-line-number-mode "wcy-display-line-number/wcy-display-line-number" "\
show the line number at left margine

\(fn &optional ARG)" t nil)

(autoload 'wcy-display-line-number-on "wcy-display-line-number/wcy-display-line-number" "\


\(fn)" t nil)

(autoload 'wcy-display-line-number-off "wcy-display-line-number/wcy-display-line-number" "\


\(fn)" t nil)

(autoload 'dln-core "wcy-display-line-number/wcy-display-line-number" "\


\(fn START END STR)" nil nil)

(autoload 'dln-display "wcy-display-line-number/wcy-display-line-number" "\


\(fn &optional ARG)" t nil)

(autoload 'dln-undisplay "wcy-display-line-number/wcy-display-line-number" "\


\(fn)" t nil)

(autoload 'dln-after-change-function "wcy-display-line-number/wcy-display-line-number" "\


\(fn &optional START END LENGTH)" nil nil)

(autoload 'dln-window-scroll-function "wcy-display-line-number/wcy-display-line-number" "\


\(fn &optional WIN POS)" nil nil)

(autoload 'dln-window-configuration-change-function "wcy-display-line-number/wcy-display-line-number" "\


\(fn &optional WIN POS)" nil nil)

;;;***

;;;### (autoloads (yas-global-mode yas-minor-mode) "yasnippet/yasnippet"
;;;;;;  "yasnippet/yasnippet.el" (21150 42492))
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

;;;***

;;;### (autoloads nil nil ("ac-math/ac-math.el" "ascii-table/ascii-table.el"
;;;;;;  "auto-complete-yasnippet/auto-complete-yasnippet.el" "auto-complete/auto-complete-config.el"
;;;;;;  "auto-complete/auto-complete-pkg.el" "bazaar/bazaar.el" "bzr-ui/bzr-ui.el"
;;;;;;  "cedet/cedet-build.el" "cedet/cedet-devel-load.el" "cedet/cedet-ediff.el"
;;;;;;  "cedet/cedet-emacs-merge.el" "cedet/cedet-remove-builtin.el"
;;;;;;  "cedet/cedet-update-changelog.el" "cedet/cedet-update-version.el"
;;;;;;  "chinese-chess-pvc/chinese-chess-pvc.el" "chinese-chess/chinese-chess.el"
;;;;;;  "chm-view/chm-view.el" "cscope/cscope.el" "date-calc/date-calc.el"
;;;;;;  "el-get/el-get-autoloads.el" "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "emacs-init/emacs-init.el"
;;;;;;  "muse/lisp/muse-autoloads.el" "muse/lisp/muse-backlink.el"
;;;;;;  "muse/lisp/muse-book.el" "muse/lisp/muse-context.el" "muse/lisp/muse-docbook.el"
;;;;;;  "muse/lisp/muse-groff.el" "muse/lisp/muse-html.el" "muse/lisp/muse-http.el"
;;;;;;  "muse/lisp/muse-ikiwiki.el" "muse/lisp/muse-import-xml.el"
;;;;;;  "muse/lisp/muse-ipc.el" "muse/lisp/muse-journal.el" "muse/lisp/muse-latex.el"
;;;;;;  "muse/lisp/muse-latex2png.el" "muse/lisp/muse-poem.el" "muse/lisp/muse-regexps.el"
;;;;;;  "muse/lisp/muse-texinfo.el" "muse/lisp/muse-wiki.el" "muse/lisp/muse-xml-common.el"
;;;;;;  "muse/lisp/muse-xml.el" "wcy-compose/wcy-compose.el") (21237
;;;;;;  47631 589895))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
