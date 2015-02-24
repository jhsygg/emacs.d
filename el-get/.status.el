((ac-math status "required" recipe nil)
 (ac-octave status "installed" recipe
	    (:name ac-octave :type emacswiki :description "octave completions support for auto-complete"))
 (apache-mode status "installed" recipe
	      (:name apache-mode :description "Major mode for editing Apache configuration files" :type github :pkgname "emacsmirror/apache-mode"))
 (ascii status "installed" recipe
	(:name ascii :auto-generated t :type emacswiki :description "ASCII code display." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/ascii.el"))
 (ascii-table status "installed" recipe
	      (:name ascii-table :auto-generated t :type emacswiki :description "simple ASCII table" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/ascii-table.el"))
 (auctex status "required" recipe nil)
 (auto-complete status "installed" recipe
		(:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
		       (popup fuzzy)
		       :features auto-complete-config :post-init
		       (progn
			 (add-to-list 'ac-dictionary-directories
				      (expand-file-name "dict" default-directory))
			 (ac-config-default))))
 (auto-complete+ status "installed" recipe
		 (:name auto-complete+ :auto-generated t :type emacswiki :description "Auto complete plus" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/auto-complete+.el"))
 (auto-complete-clang status "installed" recipe
		      (:name auto-complete-clang :website "https://github.com/brianjcj/auto-complete-clang" :description "Auto-complete sources for Clang. Combine the power of AC, Clang and Yasnippet." :type github :pkgname "brianjcj/auto-complete-clang" :depends auto-complete))
 (auto-complete-css status "installed" recipe
		    (:name auto-complete-css :description "Auto-complete sources for CSS" :type http :url "http://www.cx4a.org/pub/auto-complete-css.el" :depends auto-complete))
 (auto-complete-latex status "required" recipe nil)
 (auto-complete-yasnippet status "installed" recipe
			  (:name auto-complete-yasnippet :description "Auto-complete sources for YASnippet" :type http :url "http://www.cx4a.org/pub/auto-complete-yasnippet.el" :depends
				 (auto-complete yasnippet)))
 (bazaar status "installed" recipe
	 (:name bazaar :auto-generated t :type emacswiki :description "" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/bazaar.el"))
 (bzr-ui status "installed" recipe
	 (:name bzr-ui :auto-generated t :type emacswiki :description "Utility functions to navigate a working copy of a bazaar repository" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/bzr-ui.el"))
 (cal-china-x status "installed" recipe
	      (:name cal-china-x :description "Chinese calendar extras" :type github :pkgname "xwl/cal-china-x" :features cal-china-x))
 (cedet status "required" recipe nil)
 (chinese-chess status "installed" recipe
		(:name chinese-chess :auto-generated t :type emacswiki :description "Chinese Chess Game   -*- coding: utf-8 -*-" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/chinese-chess.el"))
 (chinese-chess-pvc status "installed" recipe
		    (:name chinese-chess-pvc :auto-generated t :type emacswiki :description "a chinese chess computer player -*- coding: utf-8 -*-" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/chinese-chess-pvc.el"))
 (chm-view status "installed" recipe
	   (:name chm-view :auto-generated t :type emacswiki :description "View CHM file." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/chm-view.el"))
 (cl-lib status "installed" recipe
	 (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (company-mode status "installed" recipe
	       (:name company-mode :website "http://company-mode.github.io/" :description "Modular in-buffer completion framework for Emacs" :type github :pkgname "company-mode/company-mode"))
 (cscope status "installed" recipe
	 (:name cscope :auto-generated t :type emacswiki :description "Interface to cscope browser" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/cscope.el"))
 (csv-mode status "removed" recipe nil)
 (date-calc status "installed" recipe
	    (:name date-calc :auto-generated t :type emacswiki :description "date calculation and parsing routines" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/date-calc.el"))
 (ecb status "removed" recipe nil)
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
		("el-get.*\\.el$" "methods/")
		:load "el-get.el"))
 (emacs-init status "installed" recipe
	     (:name emacs-init :auto-generated t :type emacswiki :description "Drew Adams's Emacs init file." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/emacs-init.el"))
 (emacs-w3m status "installed" recipe
	    (:name emacs-w3m :description "A simple Emacs interface to w3m" :type cvs :module "emacs-w3m" :url ":pserver:anonymous@cvs.namazu.org:/storage/cvsroot" :build
		   `("autoconf"
		     ("./configure" ,(concat "--with-emacs=" el-get-emacs))
		     "make")
		   :build/windows-nt
		   ("sh /usr/bin/autoconf" "sh ./configure" "make")
		   :info "doc"))
 (erc status "installed" recipe
      (:name erc :description "A powerful, modular, and extensible Emacs InternetRelayChat client." :type elpa))
 (facebook status "installed" recipe
	   (:name facebook :auto-generated t :type emacswiki :description "Access the Facebook API from emacs" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/facebook.el"))
 (fuzzy status "installed" recipe
	(:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (git-emacs status "installed" recipe
	    (:name git-emacs :description "Yet another git emacs mode for newbies" :type github :pkgname "tsgates/git-emacs" :features git-emacs))
 (git-modes status "installed" recipe
	    (:name git-modes :description "GNU Emacs modes for various Git-related files" :type github :pkgname "magit/git-modes"))
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
 (go-lint status "required" recipe nil)
 (go-mode status "installed" recipe
	  (:name go-mode :description "Major mode for the Go programming language" :type http :url "http://go.googlecode.com/hg/misc/emacs/go-mode.el?r=tip" :localname "go-mode.el" :features go-mode :post-init
		 (add-to-list 'auto-mode-alist
			      '("\\.go\\'" . go-mode))))
 (google-maps status "removed" recipe nil)
 (graphviz-dot-mode status "installed" recipe
		    (:name graphviz-dot-mode :type http :website "http://www.graphviz.org/" :description "graphviz dot language mode" :url "http://www.graphviz.org/Misc/graphviz-dot-mode.el" :autoloads t))
 (htmlize status "removed" recipe nil)
 (init-ide status "removed" recipe nil)
 (jdee status "removed" recipe nil)
 (js-comint status "installed" recipe
	    (:name js-comint :description "Run javascript in an inferior process window." :type http :url "http://downloads.sourceforge.net/js-comint-el/js-comint.el"))
 (js2-mode status "installed" recipe
	   (:name js2-mode :website "https://github.com/mooz/js2-mode#readme" :description "An improved JavaScript editing mode" :type github :pkgname "mooz/js2-mode" :prepare
		  (autoload 'js2-mode "js2-mode" nil t)))
 (json status "installed" recipe
       (:name json :description "JavaScript Object Notation parser / generator" :type http :url "http://edward.oconnor.cx/elisp/json.el" :features json))
 (latex-math-preview status "installed" recipe
		     (:name latex-math-preview :auto-generated t :type emacswiki :description "preview LaTeX mathematical expressions." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/latex-math-preview.el"))
 (magit status "installed" recipe
	(:name magit :website "https://github.com/magit/magit#readme" :description "It's Magit! An Emacs mode for Git." :type github :pkgname "magit/magit" :depends
	       (cl-lib git-modes)
	       :info "." :compile "magit.*.el\\'" :build
	       `(("make" "docs"))
	       :build/berkeley-unix
	       (("gmake docs"))
	       :build/windows-nt
	       (progn nil)))
 (mmm-mode status "installed" recipe
	   (:name mmm-mode :description "Allow Multiple Major Modes in a buffer" :type github :pkgname "purcell/mmm-mode"))
 (muse status "installed" recipe
       (:name muse :description "An authoring and publishing tool for Emacs" :type github :pkgname "alexott/muse" :load-path
	      ("./lisp")
	      :build
	      `(,(concat "make EMACS=" el-get-emacs))
	      :autoloads "muse-autoloads"))
 (org-blog status "installed" recipe
	   (:name org-blog :auto-generated t :type emacswiki :description "create and publish a blog with org-mode" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/org-blog.el"))
 (org-mode status "required" recipe nil)
 (org-website status "removed" recipe nil)
 (package status "installed" recipe
	  (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin 24 :type http :url "http://repo.or.cz/w/emacs.git/blob_plain/1a0a666f941c99882093d7bd08ced15033bc3f0c:/lisp/emacs-lisp/package.el" :shallow nil :features package :post-init
		 (progn
		   (setq package-user-dir
			 (expand-file-name
			  (convert-standard-filename
			   (concat
			    (file-name-as-directory default-directory)
			    "elpa")))
			 package-directory-list
			 (list
			  (file-name-as-directory package-user-dir)
			  "/usr/share/emacs/site-lisp/elpa/"))
		   (make-directory package-user-dir t)
		   (unless
		       (boundp 'package-subdirectory-regexp)
		     (defconst package-subdirectory-regexp "^\\([^.].*\\)-\\([0-9]+\\(?:[.][0-9]+\\)*\\)$" "Regular expression matching the name of\n a package subdirectory. The first subexpression is the package\n name. The second subexpression is the version string."))
		   (setq package-archives
			 '(("ELPA" . "http://tromey.com/elpa/")
			   ("gnu" . "http://elpa.gnu.org/packages/")
			   ("marmalade" . "http://marmalade-repo.org/packages/")
			   ("SC" . "http://joseito.republika.pl/sunrise-commander/"))))))
 (php-mode status "installed" recipe
	   (:name php-mode :description "A PHP mode for GNU Emacs " :type github :pkgname ejmr/php-mode :website "https://github.com/ejmr/php-mode"))
 (popup status "installed" recipe
	(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :pkgname "auto-complete/popup-el"))
 (twitter status "installed" recipe
	  (:name twitter :description "Simple Emacs-based client for Twitter" :type git :url "git://git.busydoingnothing.co.uk/twitter.git"))
 (twittering-mode status "installed" recipe
		  (:name twittering-mode :description "Major mode for Twitter" :type github :pkgname "hayamiz/twittering-mode" :features twittering-mode :compile "twittering-mode.el"))
 (unicad status "installed" recipe
	 (:name unicad :auto-generated t :type emacswiki :description "an elisp port of Mozilla Universal Charset Auto Detector" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/unicad.el"))
 (wcy-complete status "installed" recipe
	       (:name wcy-complete :auto-generated t :type emacswiki :description "extremely simple version of tempo, not as powerful as tempo. " :website "https://raw.github.com/emacsmirror/emacswiki.org/master/wcy-complete.el"))
 (wcy-compose status "installed" recipe
	      (:name wcy-compose :auto-generated t :type emacswiki :description "some helper function that is not defined by default" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/wcy-compose.el"))
 (wcy-desktop status "installed" recipe
	      (:name wcy-desktop :auto-generated t :type emacswiki :description "faster than desktop.el and less features." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/wcy-desktop.el"))
 (wcy-display-line-number status "installed" recipe
			  (:name wcy-display-line-number :auto-generated t :type emacswiki :description "line number mode for Emacs" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/wcy-display-line-number.el"))
 (weblogger status "installed" recipe
	    (:name weblogger :auto-generated t :type emacswiki :description "" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/weblogger.el"))
 (weblogger-el status "removed" recipe nil)
 (xml-rpc-el status "required" recipe nil)
 (yasnippet status "installed" recipe
	    (:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :features "yasnippet" :pre-init
		   (unless
		       (or
			(boundp 'yas/snippet-dirs)
			(get 'yas/snippet-dirs 'customized-value))
		     (setq yas/snippet-dirs
			   (list
			    (concat el-get-dir
				    (file-name-as-directory "yasnippet")
				    "snippets"))))
		   :post-init
		   (put 'yas/snippet-dirs 'standard-value
			(list
			 (list 'quote
			       (list
				(concat el-get-dir
					(file-name-as-directory "yasnippet")
					"snippets")))))
		   :compile nil :submodule nil))
 (yasnippet-config status "installed" recipe
		   (:name yasnippet-config :auto-generated t :type emacswiki :description "Configuration of yasnippet.el" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/yasnippet-config.el")))
