((ac-math status "installed" recipe
	  (:name ac-math :type github :website "https://github.com/vspinu/ac-math" :description "This is an add-on which defines three ac-sources for the auto-complete package" :depends
		 (auto-complete math-symbol-lists)
		 :pkgname "vspinu/ac-math"))
 (ac-slime status "installed" recipe
	   (:name ac-slime :website "https://github.com/purcell/ac-slime" :description "Emacs auto-complete plugin for Slime symbols" :type github :depends
		  (slime)
		  :pkgname "purcell/ac-slime"))
 (auctex status "installed" recipe
	 (:name auctex :website "http://www.gnu.org/software/auctex/" :description "AUCTeX is an extensible package for writing and formatting TeX files in GNU Emacs and XEmacs. It supports many different TeX macro packages, including AMS-TeX, LaTeX, Texinfo, ConTeXt, and docTeX (dtx files)." :type git :module "auctex" :url "git://git.savannah.gnu.org/auctex.git" :build
		`(("./autogen.sh")
		  ("./configure" "--without-texmf-dir" "--with-packagelispdir=$(pwd)" "--with-packagedatadir=$(pwd)" ,(concat "--with-emacs=" el-get-emacs))
		  ("make"))
		:build/darwin
		`(("./autogen.sh")
		  ("./configure" "--without-texmf-dir" "--with-packagelispdir=$(pwd)" "--with-packagedatadir=$(pwd)" "--with-lispdir=$(pwd)" ,(concat "--with-emacs=" el-get-emacs))
		  ("make"))
		:load-path
		(".")
		:load
		("tex-site.el" "preview-latex.el")
		:info "doc"))
 (auto-complete status "installed" recipe
		(:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
		       (popup fuzzy)
		       :features auto-complete-config :post-init
		       (progn
			 (add-to-list 'ac-dictionary-directories
				      (expand-file-name "dict" default-directory))
			 (ac-config-default))))
 (auto-complete-emacs-lisp status "installed" recipe
			   (:name auto-complete-emacs-lisp :description "Auto-complete sources for emacs lisp" :type http :url "http://www.cx4a.org/pub/auto-complete-emacs-lisp.el" :depends auto-complete))
 (auto-complete-latex status "installed" recipe
		      (:name auto-complete-latex :description "A LaTeX extention for auto-complete-mode" :website "https://bitbucket.org/tequilasunset/auto-complete-latex" :url "https://bitbucket.org/tequilasunset/auto-complete-latex" :type hg :depends auto-complete))
 (cedet status "installed" recipe
	(:name cedet :website "http://cedet.sourceforge.net/" :description "CEDET is a Collection of Emacs Development Environment Tools written with the end goal of creating an advanced development environment in Emacs." :type git :url "http://git.code.sf.net/p/cedet/git" :build
	       `(("sh" "-c" "touch `find . -name Makefile`")
		 ("make" ,(format "EMACS=%s"
				  (shell-quote-argument el-get-emacs))
		  "clean-all")
		 ("make" ,(format "EMACS=%s"
				  (shell-quote-argument el-get-emacs)))
		 ("make" ,(format "EMACS=%s"
				  (shell-quote-argument el-get-emacs))
		  "-C" "contrib"))
	       :build/berkeley-unix
	       `(("sh" "-c" "touch `find . -name Makefile`")
		 ("gmake" ,(format "EMACS=%s"
				   (shell-quote-argument el-get-emacs))
		  "clean-all")
		 ("gmake" ,(format "EMACS=%s"
				   (shell-quote-argument el-get-emacs)))
		 ("gmake" ,(format "EMACS=%s"
				   (shell-quote-argument el-get-emacs))
		  "-C" "contrib"))
	       :build/windows-nt
	       `(("sh" "-c" "touch `/usr/bin/find . -name Makefile` && make FIND=/usr/bin/find"))
	       :features nil :lazy nil :post-init
	       (if
		   (or
		    (featurep 'cedet-devel-load)
		    (featurep 'eieio))
		   (message
		    (concat "Emacs' built-in CEDET has already been loaded!  Restart" " Emacs to load CEDET from el-get instead."))
		 (load
		  (expand-file-name "cedet-devel-load.el" pdir)))))
 (cl-lib status "installed" recipe
	 (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
		("el-get.*\\.el$" "methods/")
		:features el-get :post-init
		(when
		    (memq 'el-get
			  (bound-and-true-p package-activated-list))
		  (message "Deleting melpa bootstrap el-get")
		  (unless package--initialized
		    (package-initialize t))
		  (when
		      (package-installed-p 'el-get)
		    (let
			((feats
			  (delete-dups
			   (el-get-package-features
			    (el-get-elpa-package-directory 'el-get)))))
		      (el-get-elpa-delete-package 'el-get)
		      (dolist
			  (feat feats)
			(unload-feature feat t))))
		  (require 'el-get))))
 (facebook status "installed" recipe
	   (:name facebook :auto-generated t :type emacswiki :description "Access the Facebook API from emacs" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/facebook.el"))
 (fuzzy status "installed" recipe
	(:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (go-mode status "installed" recipe
	  (:name go-mode :description "Major mode for the Go programming language" :type github :pkgname "dominikh/go-mode.el"))
 (graphviz-dot-mode status "installed" recipe
		    (:name graphviz-dot-mode :description "graphviz dot language mode" :type github :pkgname "ppareit/graphviz-dot-mode"))
 (math-symbol-lists status "installed" recipe
		    (:name math-symbol-lists :description "Lists of Unicode mathematical symbols and latex commands" :website "https://github.com/vspinu/math-symbol-lists" :type github :depends nil :pkgname "vspinu/math-symbol-lists"))
 (mmm-mode status "required" recipe nil)
 (org-mode status "required" recipe nil)
 (popup status "installed" recipe
	(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :depends cl-lib :pkgname "auto-complete/popup-el"))
 (slime status "installed" recipe
	(:name slime :description "Superior Lisp Interaction Mode for Emacs" :type github :autoloads "slime-autoloads" :info "doc" :pkgname "slime/slime" :depends cl-lib :load-path
	       ("." "contrib")
	       :build
	       '(("sed" "-i" "s/@itemx INIT-FUNCTION/@item INIT-FUNCTION/" "doc/slime.texi")
		 ("make" "-C" "doc" "slime.info"))
	       :build/darwin
	       '(("make" "-C" "doc" "slime.info"))
	       :build/berkeley-unix
	       '(("gmake" "-C" "doc" "slime.info"))
	       :post-init
	       (slime-setup)))
 (yasnippet status "installed" recipe
	    (:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil :build
		   (("git" "submodule" "update" "--init" "--" "snippets"))))
 (yasnippet-config status "installed" recipe
		   (:name yasnippet-config :auto-generated t :type emacswiki :description "Configuration of yasnippet.el" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/yasnippet-config.el"))
 (yasnippet-snippets status "installed" recipe
		     (:name yasnippet-snippets :description "A collection of yasnippet snippets for many languages" :type github :pkgname "AndreaCrotti/yasnippet-snippets" :depends
			    (yasnippet)))
 (yasnippets status "installed" recipe
	     (:name yasnippets :description "Comprehensive collection of yasnippets" :type github :pkgname "rejeep/yasnippets" :depends
		    (yasnippet))))
