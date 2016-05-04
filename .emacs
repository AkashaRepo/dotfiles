(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(backup-directory-alist (quote (("." . "~/.emacs.d/backups/"))))
 '(column-number-mode t)
 '(cua-enable-cua-keys t)
 '(cua-mode t nil (cua-base))
 '(cua-normal-cursor-color "black")
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes (quote ("1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(doc-view-continuous t)
 '(fringe-mode (quote (1 . 1)) nil (fringe))
 '(org-agenda-file-regexp "(\\`[^.].\\.org'\\|[0-9]+)")
 '(org-agenda-files (quote ("/home/yuki/Documents/journal/")))
 '(org-from-is-user-regexp "\\<yuki nagato\\>")
 '(org-journal-enable-encryption nil)
 '(org-journal-find-file (quote find-file))
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("marmalade" . "http://marmalade-repo.org/packages/"))))
 '(send-mail-function (quote smtpmail-send-it))
 '(server-mode t)
 '(size-indication-mode t)
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 587)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Terminus" :foundry "xos4" :slant normal :weight normal :height 80 :width normal))))
 '(gnus-server-agent ((t (:foreground "#fdf6e3" :inverse-video nil :underline nil :slant normal :weight bold))) t))

;;manualy set variables
(package-initialize)
(setq inhibit-startup-message t)
(setq-default truncate-lines t)
(column-number-mode t)
(delete-selection-mode 1)
(line-number-mode t)
(require 'markdown-mode)
;;journal
(require 'org-journal)
(org-journal-new-entry nil)

;;For windowed version
(if window-system (progn (load-theme 'solarized-dark)
			 (bar-cursor-mode t)
			 (tool-bar-mode -1)
			 (scroll-bar-mode -1))
  ;;else
  (menu-bar-mode -1))
(put 'upcase-region 'disabled nil)
