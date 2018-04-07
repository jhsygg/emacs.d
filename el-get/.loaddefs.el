;;; .loaddefs.el --- 

;;;### (autoloads nil "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (23239 15770 743303 314000))
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
;;;;;;  (23239 15770 742303 310000))
;;; Generated autoloads from auto-complete/auto-complete-config.el

(autoload 'ac-config-default "auto-complete/auto-complete-config" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "chinese-fonts-setup/cnfonts" "chinese-fonts-setup/cnfonts.el"
;;;;;;  (23239 16781 661249 787000))
;;; Generated autoloads from chinese-fonts-setup/cnfonts.el

(autoload 'cnfonts-set-font-with-saved-step "chinese-fonts-setup/cnfonts" "\
设置字体为：当前保存 step 对应的字体.
如果 FRAME 是 non-nil, 设置对应的 FRAME 的字体。

\(fn &optional FRAME)" t nil)

(autoload 'cnfonts-reset-fontsize "chinese-fonts-setup/cnfonts" "\
使用 `cnfonts-default-step' 对应的 step 来设置字体.

\(fn)" t nil)

(autoload 'cnfonts-decrease-fontsize "chinese-fonts-setup/cnfonts" "\
Cnfonts 减小字体.

\(fn)" t nil)

(autoload 'cnfonts-increase-fontsize "chinese-fonts-setup/cnfonts" "\
Cnfonts 增大字体.

\(fn)" t nil)

(autoload 'cnfonts-switch-profile "chinese-fonts-setup/cnfonts" "\
切换 cnfonts profile.

\(fn)" t nil)

(autoload 'cnfonts-next-profile "chinese-fonts-setup/cnfonts" "\
选择下一个 profile 中当前 STEP 对应的字体设置.

\(fn &optional STEP)" t nil)

(autoload 'cnfonts-edit-profile "chinese-fonts-setup/cnfonts" "\
编辑当前 cnfonts profile.

\(fn)" t nil)

(autoload 'cnfonts-edit-profile-without-ui "chinese-fonts-setup/cnfonts" "\
编辑当前 cnfonts profile, 不使用 ‘cnfonts-ui’ 组件.

\(fn)" t nil)

(autoload 'cnfonts-regenerate-profile "chinese-fonts-setup/cnfonts" "\
重新生成当前 profile.

\(fn)" t nil)

(autoload 'cnfonts-insert-fonts-configure "chinese-fonts-setup/cnfonts" "\
在光标处，插入一个 elisp 片断，这个 elisp 片断可以用来配置中文和英文字体.

\(fn)" t nil)

(autoload 'cnfonts-insert-fontname "chinese-fonts-setup/cnfonts" "\
Select a valid font name, and insert at point.

\(fn)" t nil)

(autoload 'cnfonts-enable "chinese-fonts-setup/cnfonts" "\
运行这个函数，可以让 Emacs 启动的时候就激活 cnfonts.

\(fn)" t nil)

(autoload 'cnfonts-disable "chinese-fonts-setup/cnfonts" "\
清除与 cnfonts 相关的 hook 设定.

\(fn)" t nil)

(autoload 'cnfonts-set-spacemacs-fallback-fonts "chinese-fonts-setup/cnfonts" "\
显示 Spacemace mode-line 上面有一些 Unicode 字符.
这些字符需要专门的字体来显示，spacemacs 将这些字体的名字内置在
`spacemacs/set-default-font' 的代码中。运行这个函数后，cnfonts
将使用同样的字体来显示这些 Unicode 字符。

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ps-print-19/ps-print-19" "ps-print-19/ps-print-19.el"
;;;;;;  (23240 43853 288578 312000))
;;; Generated autoloads from ps-print-19/ps-print-19.el

(defvar ps-paper-type 'letter "\
*Specifies the size of paper to format for.
Should be one of the paper types defined in `ps-page-dimensions-database', for
example `letter', `legal' or `a4'.")

(autoload 'ps-print-buffer "ps-print-19/ps-print-19" "\
Generate and print a PostScript image of the buffer.

When called with a numeric prefix argument (C-u), prompts the user for
the name of a file to save the PostScript image in, instead of sending
it to the printer.

More specifically, the FILENAME argument is treated as follows: if it
is nil, send the image to the printer.  If FILENAME is a string, save
the PostScript image in a file with that name.  If FILENAME is a
number, prompt the user for the name of the file to save in.

\(fn &optional FILENAME)" t nil)

(autoload 'ps-print-buffer-with-faces "ps-print-19/ps-print-19" "\
Generate and print a PostScript image of the buffer.
Like `ps-print-buffer', but includes font, color, and underline
information in the generated image.  This command works only if you
are using a window system, so it has a way to determine color values.

\(fn &optional FILENAME)" t nil)

(autoload 'ps-print-region "ps-print-19/ps-print-19" "\
Generate and print a PostScript image of the region.
Like `ps-print-buffer', but prints just the current region.

\(fn FROM TO &optional FILENAME)" t nil)

(autoload 'ps-print-region-with-faces "ps-print-19/ps-print-19" "\
Generate and print a PostScript image of the region.
Like `ps-print-region', but includes font, color, and underline
information in the generated image.  This command works only if you
are using a window system, so it has a way to determine color values.

\(fn FROM TO &optional FILENAME)" t nil)

(autoload 'ps-spool-buffer "ps-print-19/ps-print-19" "\
Generate and spool a PostScript image of the buffer.
Like `ps-print-buffer' except that the PostScript image is saved in a
local buffer to be sent to the printer later.

Use the command `ps-despool' to send the spooled images to the printer.

\(fn)" t nil)

(autoload 'ps-spool-buffer-with-faces "ps-print-19/ps-print-19" "\
Generate and spool a PostScript image of the buffer.
Like `ps-spool-buffer', but includes font, color, and underline
information in the generated image.  This command works only if you
are using a window system, so it has a way to determine color values.

Use the command `ps-despool' to send the spooled images to the printer.

\(fn)" t nil)

(autoload 'ps-spool-region "ps-print-19/ps-print-19" "\
Generate a PostScript image of the region and spool locally.
Like `ps-spool-buffer', but spools just the current region.

Use the command `ps-despool' to send the spooled images to the printer.

\(fn FROM TO)" t nil)

(autoload 'ps-spool-region-with-faces "ps-print-19/ps-print-19" "\
Generate a PostScript image of the region and spool locally.
Like `ps-spool-region', but includes font, color, and underline
information in the generated image.  This command works only if you
are using a window system, so it has a way to determine color values.

Use the command `ps-despool' to send the spooled images to the printer.

\(fn FROM TO)" t nil)

(autoload 'ps-despool "ps-print-19/ps-print-19" "\
Send the spooled PostScript to the printer.

When called with a numeric prefix argument (C-u), prompt the user for
the name of a file to save the spooled PostScript in, instead of sending
it to the printer.

More specifically, the FILENAME argument is treated as follows: if it
is nil, send the image to the printer.  If FILENAME is a string, save
the PostScript image in a file with that name.  If FILENAME is a
number, prompt the user for the name of the file to save in.

\(fn &optional FILENAME)" t nil)

(autoload 'ps-line-lengths "ps-print-19/ps-print-19" "\
Display the correspondence between a line length and a font size,
using the current ps-print setup.
Try: pr -t file | awk '{printf \"%3d %s
\", length($0), $0}' | sort -r | head

\(fn)" t nil)

(autoload 'ps-nb-pages-buffer "ps-print-19/ps-print-19" "\
Display number of pages to print this buffer, for various font heights.
The table depends on the current ps-print setup.

\(fn NB-LINES)" t nil)

(autoload 'ps-nb-pages-region "ps-print-19/ps-print-19" "\
Display number of pages to print the region, for various font heights.
The table depends on the current ps-print setup.

\(fn NB-LINES)" t nil)

(autoload 'ps-setup "ps-print-19/ps-print-19" "\
Return the current PostScript-generation setup.

\(fn)" nil nil)

(autoload 'ps-extend-face-list "ps-print-19/ps-print-19" "\
Extend face in `ps-print-face-extension-alist'.

If optional MERGE-P is non-nil, extensions in FACE-EXTENSION-LIST are merged
with face extension in `ps-print-face-extension-alist'; otherwise, overrides.

The elements in FACE-EXTENSION-LIST is like those for `ps-extend-face'.

See `ps-extend-face' for documentation.

\(fn FACE-EXTENSION-LIST &optional MERGE-P)" nil nil)

(autoload 'ps-extend-face "ps-print-19/ps-print-19" "\
Extend face in `ps-print-face-extension-alist'.

If optional MERGE-P is non-nil, extensions in FACE-EXTENSION list are merged
with face extensions in `ps-print-face-extension-alist'; otherwise, overrides.

The elements of FACE-EXTENSION list have the form:

   (FACE-NAME FOREGROUND BACKGROUND EXTENSION...)

FACE-NAME is a face name symbol.

FOREGROUND and BACKGROUND may be nil or a string that denotes the
foreground and background colors respectively.

EXTENSION is one of the following symbols:
   bold      - use bold font.
   italic    - use italic font.
   underline - put a line under text.
   strikeout - like underline, but the line is in middle of text.
   overline  - like underline, but the line is over the text.
   shadow    - text will have a shadow.
   box       - text will be surrounded by a box.
   outline   - print characters as hollow outlines.

If EXTENSION is any other symbol, it is ignored.

\(fn FACE-EXTENSION &optional MERGE-P)" nil nil)

;;;***

;;;### (autoloads nil nil ("auto-complete/auto-complete-pkg.el" "chinese-fonts-setup/cnfonts-ui.el"
;;;;;;  "popup/popup.el") (23239 16781 661249 787000))

;;;***

;;;### (autoloads nil "pkg-info/pkg-info" "pkg-info/pkg-info.el"
;;;;;;  (23239 12650 105215 712000))
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
