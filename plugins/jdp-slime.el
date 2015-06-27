;;; jdp-slime.el ---                                 -*- lexical-binding: t; -*-

;; Copyright (C) 2015  jhsygg

;; Author: jhsygg <jhsygg@126.com>
;; Keywords: 

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:

(add-to-list 'load-path "~/.emacs.d/el-get/slime")
(require 'slime-autoloads)

(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-scratch slime-editing-commands))

(setq slime-contribs '(slime-repl))
(setq slime-contribs '(slime-fancy))


(add-to-list 'load-path "~/.emacs.d/el-get/ac-slime")
(require 'ac-slime)

(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'slime-repl-mode))

(provide 'jdp-slime)
;;; jdp-slime.el ends here
