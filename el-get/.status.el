((ac-anything status "installed" recipe
	      (:name ac-anything :auto-generated t :type emacswiki :description "Auto Complete with Anything" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/ac-anything.el"))
 (ac-anything2 status "installed" recipe
	       (:name ac-anything2 :auto-generated t :type emacswiki :description "ac-anything.el for the latest version of auto-complete.el" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/ac-anything2.el"))
 (ac-company status "installed" recipe
	     (:name ac-company :website "http://github.com/buzztaiki/auto-complete" :description "company backend for auto-complete" :type http :url "https://raw.github.com/buzztaiki/auto-complete/master/ac-company.el" :depends
		    (auto-complete company-mode)))
 (ac-math status "installed" recipe
	  (:name ac-math :type github :website "https://github.com/vspinu/ac-math" :description "This is an add-on which defines three ac-sources for the auto-complete package" :depends
		 (auto-complete math-symbol-lists)
		 :pkgname "vspinu/ac-math"))
 (ac-python status "installed" recipe
	    (:name ac-python :description "Simple Python Completion Source for Auto-Complete" :depends auto-complete :type http :url "http://chrispoole.com/downloads/ac-python.el" :features ac-python))
 (ac-python-async status "installed" recipe
		  (:name ac-python-async :description "Simple Python Completion Source for Auto-Complete" :type github :pkgname "thorrr/ac-python-async"))
 (ac-slime status "installed" recipe
	   (:name ac-slime :website "https://github.com/purcell/ac-slime" :description "Emacs auto-complete plugin for Slime symbols" :type github :depends
		  (slime)
		  :pkgname "purcell/ac-slime"))
 (anaconda-mode status "installed" recipe
		(:name anaconda-mode :description "Code navigation, documentation lookup and completion for Python." :type github :pkgname "proofit404/anaconda-mode" :depends
		       (dash f json-rpc pythonic)))
 (anything-slime status "installed" recipe
		 (:name anything-slime :auto-generated t :type emacswiki :description "anything-sources and some utilities for SLIME." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/anything-slime.el"))
 (auctex status "installed" recipe
	 (:name auctex :website "http://www.gnu.org/software/auctex/" :description "AUCTeX is an extensible package for writing and formatting TeX files in GNU Emacs and XEmacs. It supports many different TeX macro packages, including AMS-TeX, LaTeX, Texinfo, ConTeXt, and docTeX (dtx files)." :type git :module "auctex" :url "git://git.savannah.gnu.org/auctex.git" :build
		`(("./autogen.sh")
		  ("./configure" "--without-texmf-dir" "--with-packagelispdir=$(pwd)" "--with-packagedatadir=$(pwd)" ,(concat "--with-emacs=" el-get-emacs))
		  ("make"))
		:build/berkeley-unix
		`(("sed" "-i" "" "-e" "s/MAKE=make/MAKE=gmake/g" "autogen.sh")
		  ("./autogen.sh")
		  ("./configure" "--without-texmf-dir" "--with-packagelispdir=$(pwd)" "--with-packagedatadir=$(pwd)" ,(concat "--with-emacs=" el-get-emacs)
		   "MAKE=gmake")
		  ("gmake"))
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
 (better-defaults status "installed" recipe
		  (:name better-defaults :type github :pkgname "technomancy/better-defaults" :description "Fixing weird quirks and poor defaults." :checkout "0.1.3"))
 (cal-china-x status "installed" recipe
	      (:name cal-china-x :description "Chinese calendar extras" :type github :pkgname "xwl/cal-china-x" :features cal-china-x))
 (cedet status "installed" recipe
	(:name cedet :builtin "23.3" :website "http://cedet.sourceforge.net/" :description "CEDET is a Collection of Emacs Development Environment Tools written with the end goal of creating an advanced development environment in Emacs." :type git :url "http://git.code.sf.net/p/cedet/git" :build
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
	       (unless
		   (eq
		    (el-get-package-method 'cedet)
		    'builtin)
		 (if
		     (or
		      (featurep 'cedet-devel-load)
		      (featurep 'eieio))
		     (message
		      (concat "Emacs' built-in CEDET has already been loaded!  Restart" " Emacs to load CEDET from el-get instead."))
		   (load
		    (expand-file-name "cedet-devel-load.el" pdir))))))
 (chinese-fonts-setup status "installed" recipe
		      (:name chinese-fonts-setup :website "https://github.com/tumashu/chinese-fonts-setup#readme" :description "A fonts config tool enforcing double-width Chinese character display" :depends
			     (cl-lib)
			     :type github :pkgname "tumashu/chinese-fonts-setup"))
 (cl-lib status "installed" recipe
	 (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :website "http://elpa.gnu.org/packages/cl-lib.html"))
 (clojure-mode status "installed" recipe
	       (:name clojure-mode :website "https://github.com/clojure-emacs/clojure-mode" :description "Emacs support for the Clojure language." :type github :pkgname "clojure-emacs/clojure-mode"))
 (company-jedi status "installed" recipe
	       (:name company-jedi :description "Company backend for Python jedi." :website "https://github.com/syohex/emacs-company-jedi" :type github :pkgname "syohex/emacs-company-jedi"))
 (company-mode status "installed" recipe
	       (:name company-mode :website "http://company-mode.github.io/" :description "Modular in-buffer completion framework for Emacs" :type github :pkgname "company-mode/company-mode"))
 (ctable status "installed" recipe
	 (:name ctable :description "Table Component for elisp" :type github :pkgname "kiwanami/emacs-ctable"))
 (dash status "installed" recipe
       (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (deferred status "installed" recipe
   (:name deferred :description "Simple asynchronous functions for emacs lisp." :type github :pkgname "kiwanami/emacs-deferred"))
 (ein status "installed" recipe
      (:name ein :description "IPython notebook client in Emacs" :type github :pkgname "millejoh/emacs-ipython-notebook" :depends
	     (websocket request auto-complete)
	     :load-path
	     ("lisp")
	     :submodule nil :features ein))
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
 (elpy status "required" recipe
       (:name elpy :website "https://github.com/jorgenschaefer/elpy" :description "Emacs Python Development Environment" :type github :pkgname "jorgenschaefer/elpy" :post-init
	      (el-get-envpath-prepend "PYTHONPATH" default-directory)
	      :depends
	      (company-mode yasnippet highlight-indentation find-file-in-project idomenu pyvenv)))
 (epc status "installed" recipe
      (:name epc :description "An RPC stack for Emacs Lisp" :type github :pkgname "kiwanami/emacs-epc" :depends
	     (deferred ctable)))
 (epl status "installed" recipe
      (:name epl :description "EPL provides a convenient high-level API for various package.el versions, and aims to overcome its most striking idiocies." :type github :pkgname "cask/epl"))
 (f status "installed" recipe
    (:name f :website "https://github.com/rejeep/f.el" :description "Modern API for working with files and directories in Emacs" :depends
	   (s dash)
	   :type github :pkgname "rejeep/f.el"))
 (facebook status "installed" recipe
	   (:name facebook :auto-generated t :type emacswiki :description "Access the Facebook API from emacs" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/facebook.el"))
 (find-file-in-project status "installed" recipe
		       (:name find-file-in-project :type github :pkgname "technomancy/find-file-in-project" :description "Quick access to project files in Emacs"))
 (flycheck status "installed" recipe
	   (:name flycheck :type github :pkgname "flycheck/flycheck" :minimum-emacs-version "24.3" :description "On-the-fly syntax checking extension" :depends
		  (dash pkg-info let-alist seq)))
 (fuzzy status "installed" recipe
	(:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (git-emacs status "installed" recipe
	    (:name git-emacs :description "Yet another git emacs mode for newbies" :type github :pkgname "tsgates/git-emacs" :features git-emacs))
 (go-autocomplete status "required" recipe nil)
 (go-mode status "installed" recipe
	  (:name go-mode :description "Major mode for the Go programming language" :type github :pkgname "dominikh/go-mode.el"))
 (graphviz-dot-mode status "installed" recipe
		    (:name graphviz-dot-mode :description "graphviz dot language mode" :type github :pkgname "ppareit/graphviz-dot-mode"))
 (highlight-indentation status "installed" recipe
			(:name highlight-indentation :description "Function for highlighting indentation" :type git :url "https://github.com/antonj/Highlight-Indentation-for-Emacs"))
 (idomenu status "installed" recipe
	  (:name idomenu :type emacswiki :description "imenu tag selection a la ido" :load-path "."))
 (init-golang status "installed" recipe
	      (:name init-golang :auto-generated t :type emacswiki :description "Extensions for go lang mode" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/init-golang.el"))
 (init-python status "installed" recipe
	      (:name init-python :auto-generated t :type emacswiki :description "Init python" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/init-python.el"))
 (jedi-core status "installed" recipe
	    (:name jedi-core :type github :pkgname "tkf/emacs-jedi" :description "Python jedi core functionality for Emacs. Required for company-jedi" :minimum-emacs-version "24" :compile "jedi-core.el" :depends
		   (epc python-environment cl-lib)))
 (json-rpc status "installed" recipe
	   (:name json-rpc :description "JSON-RPC library." :type github :pkgname "skeeto/elisp-json-rpc"))
 (latex-frame-mode status "installed" recipe
		   (:name latex-frame-mode :auto-generated t :type emacswiki :description "minor mode for latex beamer geeks equipped with folding power" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/latex-frame-mode.el"))
 (let-alist status "required" recipe
	    (:name let-alist :description "Easily let-bind values of an assoc-list by their names." :builtin "25.0.50" :type elpa :url "https://elpa.gnu.org/packages/let-alist.html"))
 (math-symbol-lists status "installed" recipe
		    (:name math-symbol-lists :description "Lists of Unicode mathematical symbols and latex commands" :website "https://github.com/vspinu/math-symbol-lists" :type github :depends nil :pkgname "vspinu/math-symbol-lists"))
 (mmm-mode status "required" recipe nil)
 (org-mode status "required" recipe nil)
 (pkg-info status "installed" recipe
	   (:name pkg-info :description "Provide information about Emacs packages." :type github :pkgname "lunaryorn/pkg-info.el" :depends
		  (dash epl)))
 (popup status "installed" recipe
	(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :depends cl-lib :pkgname "auto-complete/popup-el"))
 (py-autopep8 status "installed" recipe
	      (:name py-autopep8 :description "Use autopep8 to beautify a Python buffer." :type github :pkgname "paetzke/py-autopep8.el"))
 (pycomplete+ status "installed" recipe
	      (:name pycomplete+ :auto-generated t :type emacswiki :description "complete symbols at point using Pymacs" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/pycomplete+.el"))
 (python status "installed" recipe
	 (:name python :description "Python's flying circus support for Emacs (trunk version, hopefully Emacs 24.x compatible)" :type http :url "http://git.savannah.gnu.org/cgit/emacs.git/plain/lisp/progmodes/python.el?h=master"))
 (python-cell status "installed" recipe
	      (:name python-cell :description "MATLAB-like cells in python" :type github :pkgname "thisch/python-cell.el" :depends
		     (python)))
 (python-django status "installed" recipe
		(:name python-django :description "An Emacs package for managing Django projects" :type github :pkgname "fgallina/python-django.el"))
 (python-environment status "installed" recipe
		     (:name python-environment :description "Python virtualenv API for Emacs Lisp" :type github :pkgname "tkf/emacs-python-environment" :depends
			    (deferred)))
 (python-mode status "installed" recipe
	      (:name python-mode :description "Major mode for editing Python programs" :type git :url "https://gitlab.com/python-mode-devs/python-mode" :load-path
		     ("." "test")
		     :compile nil :prepare
		     (progn
		       (autoload 'python-mode "python-mode" "Python editing mode." t)
		       (autoload 'doctest-mode "doctest-mode" "Doctest unittest editing mode." t)
		       (setq py-install-directory
			     (el-get-package-directory "python-mode"))
		       (add-to-list 'auto-mode-alist
				    '("\\.py$" . python-mode))
		       (add-to-list 'interpreter-mode-alist
				    '("python" . python-mode)))))
 (python-pep8 status "installed" recipe
	      (:type github :pkgname "emacsmirror/python-pep8" :name python-pep8 :type emacsmirror :description "Minor mode for running `pep8'" :features python-pep8 :post-init
		     (require 'tramp)))
 (pythonic status "installed" recipe
	   (:name pythonic :description "Utility functions for writing pythonic emacs package." :type github :pkgname "proofit404/pythonic"))
 (pyvenv status "installed" recipe
	 (:name pyvenv :website "https://github.com/jorgenschaefer/pyvenv" :description "Python virtual environment interface for Emacs" :type github :pkgname "jorgenschaefer/pyvenv" :post-init
		(el-get-envpath-prepend "PYTHONPATH" default-directory)))
 (qq-mode status "required" recipe nil)
 (request status "installed" recipe
	  (:name request :description "Easy HTTP request for Emacs Lisp" :type github :submodule nil :pkgname "abingham/emacs-request" :depends
		 (deferred)
		 :provide
		 (request-deferred)))
 (s status "installed" recipe
    (:name s :description "The long lost Emacs string manipulation library." :type github :pkgname "magnars/s.el"))
 (sdcv status "installed" recipe
       (:name sdcv :auto-generated t :type emacswiki :description "Interface for sdcv (StartDict console version)." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/sdcv.el"))
 (seq status "required" recipe
      (:name seq :description "Sequence manipulation library for Emacs" :builtin "25" :type github :pkgname "NicolasPetton/seq.el"))
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
 (unicad status "installed" recipe
	 (:name unicad :auto-generated t :type emacswiki :description "an elisp port of Mozilla Universal Charset Auto Detector" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/unicad.el"))
 (virtualenvwrapper status "installed" recipe
		    (:name virtualenvwrapper :type github :website "https://github.com/porterjamesj/virtualenvwrapper.el" :description "virtualenv tool for emacs" :pkgname "porterjamesj/virtualenvwrapper.el" :depends
			   (dash s)))
 (websocket status "installed" recipe
	    (:name websocket :description "A websocket implementation in elisp, for emacs." :type github :pkgname "ahyatt/emacs-websocket"))
 (yasnippet status "installed" recipe
	    (:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil))
 (yasnippet-config status "installed" recipe
		   (:name yasnippet-config :auto-generated t :type emacswiki :description "Configuration of yasnippet.el" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/yasnippet-config.el"))
 (yasnippet-snippets status "installed" recipe
		     (:name yasnippet-snippets :description "A collection of yasnippet snippets for many languages" :type github :pkgname "AndreaCrotti/yasnippet-snippets" :depends
			    (yasnippet)))
 (yasnippets status "installed" recipe
	     (:name yasnippets :description "Comprehensive collection of yasnippets" :type github :pkgname "rejeep/yasnippets" :depends
		    (yasnippet))))
