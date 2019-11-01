(require 'org-install)
(defvar emacs-init-org-config-dir (concat user-emacs-directory "config/"))
(org-babel-load-file (expand-file-name "init.org" emacs-init-org-config-dir))
