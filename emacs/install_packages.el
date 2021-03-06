; list the packages you want
(setq package-list '(expand-region
		     multiple-cursors
		     anaconda-mode
		     company-anaconda
		     racket-mode))


(require 'package)
; list the repositories containing them
(setq package-archives
      '(("melpa" . "http://melpa.org/packages/")
	("elpa" . "http://tromey.com/elpa/")
	("marmalade" . "http://marmalade-repo.org/packages/")))

(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
