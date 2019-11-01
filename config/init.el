(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; use-package
(straight-use-package 'use-package)

;; use-packageをstraight.elにフォールバックする
(setq straight-use-package-by-default t)

(use-package monokai-theme
  :init
  (load-theme 'monokai t))

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(set-face-attribute 'default nil :family "HackGen" :height 105)

(use-package smartparens
  :diminish ""
  :config
  (use-package smartparens-config
    :straight nil)
  (sp-use-smartparens-bindings)
  (smartparens-global-strict-mode t)
  (show-smartparens-global-mode t)
  (smartparens-global-mode t))

(use-package tramp
  :straight nil
  :config
  (setenv "SHELL" "/bin/bash"))
