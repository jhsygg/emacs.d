((ac-math status "installed" recipe
	  (:name ac-math :type github :website "https://github.com/vspinu/ac-math" :description "This is an add-on which defines three ac-sources for the auto-complete package" :depends
		 (auto-complete math-symbol-lists)
		 :pkgname "vspinu/ac-math"))
 (auto-complete status "installed" recipe
		(:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
		       (popup fuzzy)
		       :features auto-complete-config :post-init
		       (progn
			 (add-to-list 'ac-dictionary-directories
				      (expand-file-name "dict" default-directory))
			 (ac-config-default))))
 (cedet status "required" recipe nil)
 (cl-lib status "installed" recipe
	 (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (company-mode status "installed" recipe
	       (:name company-mode :website "http://company-mode.github.io/" :description "Modular in-buffer completion framework for Emacs" :type github :pkgname "company-mode/company-mode"))
 (csv-mode status "installed" recipe
	   (:name csv-mode :website "http://www.emacswiki.org/emacs/CsvMode" :description "Major mode for editing CSV (comma separated value) files." :type elpa :prepare
		  (autoload 'csv-mode "csv-mode" nil t)))
 (csv-nav status "installed" recipe
	  (:name csv-nav :description "Navigate and edit CSV files" :type emacswiki))
 (db-sql status "installed" recipe
	 (:name db-sql :website "https://github.com/renard/db-sql-el" :description "Connect to SQL server using tramp syntax" :type github :pkgname "renard/db-sql-el" :features
		(db-sql)))
 (el-get status "required" recipe nil)
 (fuzzy status "installed" recipe
	(:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (go-autocomplete status "installed" recipe
		  (:name go-autocomplete :description "An autocompletion daemon for the Go programming language." :type github :pkgname "nsf/gocode" :depends
			 (go-mode auto-complete)
			 :load-path
			 ("emacs")
			 :post-init
			 (progn
			   (add-to-list 'exec-path
					(expand-file-name "bin" default-directory))
			   (eval-after-load 'go-mode
			     '(require 'go-autocomplete)))))
 (go-mode status "installed" recipe
	  (:name go-mode :description "Major mode for the Go programming language" :type github :pkgname "dominikh/go-mode.el"))
 (graphviz-dot-mode status "installed" recipe
		    (:name graphviz-dot-mode :description "graphviz dot language mode" :type github :pkgname "ppareit/graphviz-dot-mode"))
 (json status "installed" recipe
       (:name json :description "JavaScript Object Notation parser / generator" :type http :builtin "23" :url "http://edward.oconnor.cx/elisp/json.el"))
 (json-mode status "installed" recipe
	    (:name json-mode :description "Major mode for editing JSON files, extends the builtin js-mode to add better syntax highlighting for JSON." :type github :pkgname "joshwnj/json-mode" :depends
		   (json-snatcher json-reformat)))
 (json-reformat status "installed" recipe
		(:name json-reformat :description "Reformatting tool for JSON." :type github :pkgname "gongo/json-reformat"))
 (json-snatcher status "installed" recipe
		(:name json-snatcher :description "Find the path to a value in JSON" :type github :pkgname "Sterlingg/json-snatcher"))
 (markdown-mode status "installed" recipe
		(:name markdown-mode :description "Major mode to edit Markdown files in Emacs" :website "http://jblevins.org/projects/markdown-mode/" :type git :url "git://jblevins.org/git/markdown-mode.git" :prepare
		       (add-to-list 'auto-mode-alist
				    '("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
 (markdown-preview-mode status "installed" recipe
			(:name markdown-preview-mode :description "Markdown preview mode with websocket.el" :type github :depends
			       (websocket markdown-mode)
			       :website "https://github.com/ancane/markdown-preview-mode.git" :pkgname "ancane/markdown-preview-mode"))
 (math-symbol-lists status "installed" recipe
		    (:name math-symbol-lists :description "Lists of Unicode mathematical symbols and latex commands" :website "https://github.com/vspinu/math-symbol-lists" :type github :depends nil :pkgname "vspinu/math-symbol-lists"))
 (matlab-mode status "installed" recipe
	      (:name matlab-mode :description "Major mode for MATLAB(R) dot-m files" :website "http://matlab-emacs.sourceforge.net/" :type cvs :module "matlab-emacs" :url ":pserver:anonymous@matlab-emacs.cvs.sourceforge.net:/cvsroot/matlab-emacs" :build
		     `(("touch" "Makefile")
		       ("make" ,(format "EMACS=%s" el-get-emacs)))
		     :load-path
		     (".")
		     :features matlab-load))
 (mmm-mode status "required" recipe nil)
 (org-mode status "required" recipe nil)
 (package status "installed" recipe
	  (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin "24" :type http :url "http://repo.or.cz/w/emacs.git/blob_plain/ba08b24186711eaeb3748f3d1f23e2c2d9ed0d09:/lisp/emacs-lisp/package.el" :shallow nil :features package :post-init
		 (progn
		   (let
		       ((old-package-user-dir
			 (expand-file-name
			  (convert-standard-filename
			   (concat
			    (file-name-as-directory default-directory)
			    "elpa")))))
		     (when
			 (file-directory-p old-package-user-dir)
		       (add-to-list 'package-directory-list old-package-user-dir)))
		   (setq package-archives
			 (bound-and-true-p package-archives))
		   (mapc
		    (lambda
		      (pa)
		      (add-to-list 'package-archives pa 'append))
		    '(("ELPA" . "http://tromey.com/elpa/")
		      ("melpa" . "http://melpa.org/packages/")
		      ("gnu" . "http://elpa.gnu.org/packages/")
		      ("marmalade" . "http://marmalade-repo.org/packages/")
		      ("SC" . "http://joseito.republika.pl/sunrise-commander/"))))))
 (popup status "installed" recipe
	(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :pkgname "auto-complete/popup-el"))
 (slime status "required" recipe nil)
 (websocket status "installed" recipe
	    (:name websocket :description "A websocket implementation in elisp, for emacs." :type github :pkgname "ahyatt/emacs-websocket"))
 (yasnippet status "installed" recipe
	    (:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil :build
		   (("git" "submodule" "update" "--init" "--" "snippets"))))
 (yasnippet-snippets status "installed" recipe
		     (:name yasnippet-snippets :description "A collection of yasnippet snippets for many languages" :type github :pkgname "AndreaCrotti/yasnippet-snippets" :depends
			    (yasnippet))))
