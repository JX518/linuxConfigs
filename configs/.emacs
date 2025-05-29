(setq inhibit-splash-screen t) 
(global-display-line-numbers-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-selection '((output-pdf "Okular")))
 '(custom-enabled-themes '(manoj-dark))
 '(package-selected-packages
   '(company flycheck lsp-latex lsp-ui multiple-cursors pdf-tools
	     pyenv-mode ssh xenops)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;(if (display-graphic-p)
;    (load-theme 'modus-vivendi)
;)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
;;(package-refresh-contents)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package multiple-cursors
  :diminish
;;mc/skip-to-previous-like-this
;;mc/skip-to-next-like-this
;;mc/mark-all-words-like-this
  :bind(("M-n". mc/insert-numbers)
	("M-l". mc/insert-letters)
	("M-s". mc/mark-all-in-region)
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
(eval-after-load 'verilog-mode
  '(progn
     ;; same for all the electric-verilog-* commands in the mode's map (see verilog-mode.el)
     (define-key verilog-mode-map (kbd ";") 'self-insert-command)
     (define-key verilog-mode-map (kbd ":") 'self-insert-command)))

(setq +latex-viewers '(pdf-tools))

;;(use-package pdf-tools
;;  :ensure t
;;  :mode ("\\.pdf\\'" . pdf-view-mode)
;;  :pin manual
;;  :config
;;  (setq pdf-info-epdfinfo-program "/usr/local/bin/brave"))

(unless (package-installed-p 'ssh)
  (package-install 'ssh))

(require 'ssh)
(add-hook 'ssh-mode-hook
          (lambda ()
            (setq ssh-directory-tracking-mode t)
            (shell-dirtrack-mode t)
            (setq dirtrackp nil)))
(put 'upcase-region 'disabled nil)

(unless (package-installed-p 'auctex)
  (package-install 'auctex))

(unless (package-installed-p 'pdf-tools)
  (package-install 'pdf-tools))

(require 'pdf-tools)

(unless (package-installed-p 'lsp-mode)
  (package-install 'lsp-mode))

(unless (package-installed-p 'lsp-ui)
  (package-install 'lsp-ui))

(unless (package-installed-p 'company)
  (package-install 'company))

(unless (package-installed-p 'flycheck)
  (package-install 'flycheck))

(unless (package-installed-p 'xenops)
  (package-install 'xenops))

(use-package lsp-mode
  :hook
  ((python-mode . lsp)))

;;;; Use pdf-tools to open PDF files
;;(setq TeX-view-program-selection '((output-pdf "PDF Tools"))
;;      TeX-source-correlate-start-server t)
;;
;;;; Update PDF buffers after successful LaTeX runs
;;(add-hook 'TeX-after-compilation-finished-functions
;;          #'TeX-revert-document-buffer)

;; (setq wl-copy-process nil)
;; (defun wl-copy (text)
;;   (setq wl-copy-process (make-process :name "wl-copy"
;;                                       :buffer nil
;;                                       :command '("wl-copy" "-f" "-n")
;;                                       :connection-type 'pipe
;;                                       :noquery t))
;;   (process-send-string wl-copy-process text)
;;   (process-send-eof wl-copy-process))
;; (defun wl-paste ()
;;   (if (and wl-copy-process (process-live-p wl-copy-process))
;;       nil ; should return nil if we're the current paste owner
;;       (shell-command-to-string "wl-paste -n | tr -d \r")))
;; (setq interprogram-cut-function 'wl-copy)
;; (setq interprogram-paste-function 'wl-paste)

;;(use-package pyvenv
;;  :ensure t
;;  :config
;;  (pyvenv-mode t)
;;  ;; Set correct Python interpreter
;;  (setq pyvenv-post-activate-hooks
;;        (list (lambda ()
;;                (setq zpython-shell-interpreter (concat pyvenv-virtual-env "bin/python3")))))
;;  (setq pyvenv-post-deactivate-hooks
;;        (list (lambda ()
;;                (setq python-shell-interpreter "python3")))))
