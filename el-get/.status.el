((ac-math status "installed" recipe
	  (:name ac-math :type http :website "http://code.google.com/p/ac-math/" :description "This is an add-on which defines three ac-sources for the auto-complete package" :url "https://ac-math.googlecode.com/svn/trunk/ac-math.el" :autoloads t))
 (apache-mode status "installed" recipe
	      (:name apache-mode :description "Major mode for editing Apache configuration files" :type github :pkgname "emacsmirror/apache-mode"))
 (ascii status "installed" recipe
	(:name ascii :auto-generated t :type emacswiki :description "ASCII code display." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/ascii.el"))
 (ascii-table status "installed" recipe
	      (:name ascii-table :auto-generated t :type emacswiki :description "simple ASCII table" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/ascii-table.el"))
 (auctex status "installed" recipe
	 (:name auctex :website "http://www.gnu.org/software/auctex/" :description "AUCTeX is an extensible package for writing and formatting TeX files in GNU Emacs and XEmacs. It supports many different TeX macro packages, including AMS-TeX, LaTeX, Texinfo, ConTeXt, and docTeX (dtx files)." :type cvs :module "auctex" :url ":pserver:anonymous@cvs.sv.gnu.org:/sources/auctex" :build
		`("./autogen.sh" ,(concat "./configure --without-texmf-dir --with-lispdir=`pwd` --with-emacs=" el-get-emacs)
		  "make")
		:load-path
		("." "preview")
		:load
		("tex-site.el" "preview/preview-latex.el")
		:info "doc"))
 (auto-complete status "installed" recipe
		(:name auto-complete :website "http://auto-complete.org/" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
		       (popup fuzzy)))
 (auto-complete-yasnippet status "installed" recipe
			  (:name auto-complete-yasnippet :description "Auto-complete sources for YASnippet" :type http :url "http://www.cx4a.org/pub/auto-complete-yasnippet.el" :depends
				 (auto-complete yasnippet)))
 (bazaar status "installed" recipe
	 (:name bazaar :auto-generated t :type emacswiki :description "" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/bazaar.el"))
 (bzr-ui status "installed" recipe
	 (:name bzr-ui :auto-generated t :type emacswiki :description "Utility functions to navigate a working copy of a bazaar repository" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/bzr-ui.el"))
 (cal-china-x status "installed" recipe
	      (:name cal-china-x :auto-generated t :type emacswiki :description "Chinese calendar extras" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/cal-china-x.el"))
 (cedet status "installed" recipe
	(:name cedet :website "http://cedet.sourceforge.net/" :description "CEDET is a Collection of Emacs Development Environment Tools written with the end goal of creating an advanced development environment in Emacs." :type git :url "http://git.randomsample.de/cedet.git" :build
	       `(("sh" "-c" "touch `find . -name Makefile`")
		 ("make" ,(format "EMACS=%s"
				  (shell-quote-argument el-get-emacs))))
	       :build/berkeley-unix
	       `(("sh" "-c" "touch `find . -name Makefile`")
		 ("gmake" ,(format "EMACS=%s"
				   (shell-quote-argument el-get-emacs))))
	       :build/windows-nt
	       ("echo #!/bin/sh > tmp.sh & echo touch `/usr/bin/find . -name Makefile` >> tmp.sh & echo make FIND=/usr/bin/find >> tmp.sh" "sed 's/^M$//' tmp.sh  > tmp2.sh" "sh ./tmp2.sh" "rm ./tmp.sh ./tmp2.sh")
	       :features nil :lazy nil :post-init
	       (unless
		   (featurep 'cedet-devel-load)
		 (load
		  (expand-file-name "cedet-devel-load.el" pdir)))))
 (chinese-chess status "installed" recipe
		(:name chinese-chess :auto-generated t :type emacswiki :description "Chinese Chess Game   -*- coding: utf-8 -*-" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/chinese-chess.el"))
 (chinese-chess-pvc status "installed" recipe
		    (:name chinese-chess-pvc :auto-generated t :type emacswiki :description "a chinese chess computer player -*- coding: utf-8 -*-" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/chinese-chess-pvc.el"))
 (chm-view status "installed" recipe
	   (:name chm-view :auto-generated t :type emacswiki :description "View CHM file." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/chm-view.el"))
 (cscope status "installed" recipe
	 (:name cscope :auto-generated t :type emacswiki :description "Interface to cscope browser" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/cscope.el"))
 (csv-mode status "removed" recipe nil)
 (date-calc status "installed" recipe
	    (:name date-calc :auto-generated t :type emacswiki :description "date calculation and parsing routines" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/date-calc.el"))
 (ecb status "removed" recipe nil)
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :load "el-get.el"))
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
 (git-emacs status "required" recipe nil)
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
 (latex-math-preview status "required" recipe nil)
 (magit status "required" recipe nil)
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
