(global-display-line-numbers-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes nil)
 '(global-display-line-numbers-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages '(multiple-cursors ##)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(if (display-graphic-p)
    (load-theme 'modus-vivendi)
)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package multiple-cursors
  :diminish
  :bind(("M-n". mc/insert-numbers)
	("M-l". mc/insert-letters)
	("M-s". mc/mark-all-words-like-this)
	("M-<down>". mc/mark-next-like-this)
 	("M-<up>". mc/mark-previous-like-this)
	("C-S-<up>". mc/unmark-next-like-this)
 	("C-S-<down>". mc/unmark-previous-like-this)
	("C-S-<mouse-1>". mc/add-cursor-on-click)
  	("M-s-s". mc/mark-all-like-this))
  :config
)
(global-set-key (kbd "C-x C-e") 'eval-print-last-sexp)

;;(global-set-key (kbd "M-SPC") 'set-rectangular-region-anchor)
(setq-default indent-tabs-mode t)
(setq-default backward-delete-char-untabify-method nil)
(setq display-buffer-base-action '(display-buffer-in-tab))
(setq verilog-auto-newline nil)
(add-hook 'verilog-mode-hook
          (lambda () (local-set-key (kbd ";") (insert [?\x3B))))

