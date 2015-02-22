(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("marmalade" . "http://marmalade-repo.org/packages/")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Terminus" :foundry "xos4" :slant normal :weight normal :height 80 :width normal)))))

;;manualy set variables
(package-initialize)
(setq inhibit-startup-message t)
(column-number-mode t)
(column-number-mode t)
(cua-mode)
(delete-selection-mode 1)
(line-number-mode t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
;;For windowed version
(if window-system (progn (load-theme 'solarized-dark)
			 (bar-cursor-mode t)
			 (tool-bar-mode -1)
			 (scroll-bar-mode -1))
  ;;else
  (menu-bar-mode -1))
