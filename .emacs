(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(tool-bar-mode nil)
 '(scroll-bar-mode nil)
 '(fringe-mode 0 nil (fringe))
 '(line-number-mode t)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(delete-selection-mode 1)
 '(global-set-key (kbd "<mouse-2>") 'x-clipboard-yank)
 '(custom-enabled-themes (quote (solarized\ dark)))
 '(custom-safe-themes (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("marmalade" . "http://marmalade-repo.org/packages/")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Terminus" :foundry "xos4" :slant normal :weight normal :height 105 :width normal)))))
(package-initialize)
(if window-system (load-theme 'solarized-dark))
