;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; danberdev's emacs init.el ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Perfection ;;
;;   ⢀⣀⣠⣆⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⡀⢀⢀⢀⢀⢀⢀⢀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀
;;   ⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄
;;   ⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
;;  ⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
;;  ⠘⠿⠿⣿⡇⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣥⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇
;;      ⠁⢀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⣿⣻⡿⡿⠿⠿⠿⠿⠿⠿⠿⠿⠟⠛⠟⠋
;;      ⢀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢇⢘⣿⣿⡟⢀⢀⢀⢀⢀⢀⠈⢻⡇
;;     ⢀⣮⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⢇⢌⣾⣮⣿⣿⢀⢀⢀⢀⢀⢀⢀⣾⣧
;;    ⢀⣜⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⣰⡿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
;;   ⢀⢾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠬⡂⢀⢀⢀⢀⠉⠉⠉⠉
;;  ⢠⢮⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⢠⠝
;; ⠰⢫⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢀⣟
;;⢀⠉⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⣸⠃
;;⢢⣄⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢀⡏
;; ⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣼⠁
;;  ⠈⠿⢿⣿⣿⣿⣿⣿⣿⣿⣤⡗
;;         ⠈⠉


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; There is an ongoing effort to keep this file clean and structured.  ;;
;; To maintain readability here is a -* Table of Contents *- outlining ;;
;; what's contained below. You can C-s the entries to jump to code.    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; -* TABLE OF CONTENTS *- ;;

;; - Packages
;; -- Packages - package-list
;; -- Packages - use-package init
;; -- Packages - reverse-im
;; -- Packages - sublimity
;; -- Packages - all-the-icons
;; -- Packages - neotree
;; -- Packages - magit
;; -- Packages - reverse-im
;; -- Packages - smart-tabs-mode
;; -- Packages - solarized-theme
;; -- Packages - rust-mode
;; -- Packages - tron-legacy-theme
;;
;; - Global Emacs settings
;;
;; - Appearence
;; -- Appearence - gui
;; -- Appearence - theme
;; -- Appearence - parnetheses highlight
;;
;; - Functions
;; -- Functions - switch-solarized-theme
;;
;; - Key bindings
;; -- Key bindings - f6 - switch-solarized-theme


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;               Packages                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Packages — straight configuration
;;;; Prevent package.el loading packages prior to init-file loading
(setq package-enable-at-startup nil)

;;;; Use freash straight version
(defvar straight-repository-branch "develop")

;;;; Automatically install any missing packages
(defvar straight-use-package-by-default t)

;;;; Bootstrap straight
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


;; Packages - use-package installation
(straight-use-package 'use-package)

;; Packages - reverse-im
;;;; Package reverse-im - translate Russian input into English
(use-package reverse-im
  :custom
  (reverse-im-input-methods '("russian-computer"))
  :config
  (reverse-im-mode t))

;; Packages — VC wrapper for git
(use-package magit)


;; Packages - Language modes
(use-package rustic
  :ensure
  :bind (:map rustic-mode-map
              ("M-?" . lsp-find-references)
              ("C-c C-c l" . flycheck-list-errors)
              ("C-c C-c a" . lsp-execute-code-action)
              ("C-c C-c r" . lsp-rename)
              ("C-c C-c q" . lsp-workspace-restart)
              ("C-c C-c Q" . lsp-workspace-shutdown)
              ("C-c C-c s" . lsp-rust-analyzer-status))
  :config
  ;; uncomment for less flashiness
  ;; (setq lsp-eldoc-hook nil)
  ;; (setq lsp-enable-symbol-highlighting nil)
  ;; (setq lsp-signature-auto-activate nil)

  ;; comment to disable rustfmt on save
  (setq rustic-format-on-save t))

(use-package qml-mode)
(use-package php-mode)
(use-package yaml-mode)
(use-package dockerfile-mode)
(use-package docker-compose-mode)

;; Packages - Color Themes
(use-package color-theme-solarized)
(use-package tron-legacy-theme)

;; Packages — completion
;;; Helm framework
(use-package helm)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)

(use-package flycheck
  :commands global-flycheck-mode)
(use-package flycheck-inline)

(use-package flycheck-color-mode-line
  :hook (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

(use-package company
  :hook (add-hook 'after-init-hook 'global-company-mode))

(use-package yasnippet
  :config
  (yas-reload-all)
  (add-hook 'prog-mode-hook 'yas-minor-mode)
  (add-hook 'text-mode-hook 'yas-minor-mode))

(use-package lsp-mode
  :hook ((python-mode . lsp)
         (cc-mode . lsp)
         (c++-mode . lsp)
         (go-mode . lsp)
         (rustic-mode . lsp)
         (lsp-mode . lsp-enable-which-key-integration))
  :config (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
  (setq lsp-headerline-breadcrumb-enable nil)
  :commands lsp)

(use-package lsp-python-ms
  :ensure t
  :init (setq lsp-python-ms-auto-install-server t)
  :hook (python-mode . (lambda ()
                          (require 'lsp-python-ms)
                          (lsp))))

;; optional if you want which-key integration
(use-package which-key
    :config
    (which-key-mode))

(use-package python-black
  :demand t
  :after python
  :hook (python-mode . python-black-on-save-mode)
  :config
  (setq python-black-extra-args '("-l" "100")))

(use-package vterm
  :config
  (setq vterm-max-scrollback 10000)
  (setq vterm-always-compile-module t)
  (setq vterm-buffer-name-string "%s")
  (add-hook 'vterm-mode-common-hook(lambda()
    (local-set-key  (kbd "C-c C-c") 'vterm-send-C-c))))

(use-package impatient-mode)

(use-package deadgrep
  :config
  (global-set-key (kbd "<f5>") #'deadgrep))

(use-package projectile
  :config
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))


;; Package — debug dap-mode
(use-package exec-path-from-shell
  :init (exec-path-from-shell-initialize))

(use-package dap-mode
  :config
  (dap-ui-mode)
  (dap-ui-controls-mode 1)

  (require 'dap-lldb)
  (require 'dap-gdb-lldb)
  ;; installs .extension/vscode
  (dap-gdb-lldb-setup)
  (dap-register-debug-template
   "Rust::LLDB Run Configuration"
   (list :type "lldb"
         :request "launch"
         :name "LLDB::Run"
         :gdbpath "rust-lldb"
         :target nil
         :cwd nil)))

(use-package clang-format+
  :config
  (setq clang-format+-always-enable t)
  (setq-default clang-format-style "llvm")
  (fset 'c-indent-region 'clang-format-region)
  (add-hook 'c-mode-common-hook (lambda () #'(local-set-key  (kbd "C-M-\\") 'clang-format-region)))
  (add-hook 'c-mode-common-hook (lambda () #'(local-set-key  (kbd "C-i") 'clang-format)))
  :hook (c-mode-common . clang-format+-mode))

;; Packages — games
(use-package chess)
(use-package gnugo)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; LLVM coding style guidelines in emacs
;; Maintainer: LLVM Team, http://llvm.org/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun llvm-lineup-statement (langelem)
  (let ((in-assign (c-lineup-assignments langelem)))
    (if (not in-assign)
        '++
      (aset in-assign 0
            (+ (aref in-assign 0)
               (* 2 c-basic-offset)))
      in-assign)))

;; Add a cc-mode style for editing LLVM C and C++ code
(c-add-style "llvm.org"
             '("gnu"
	       (fill-column . 80)
	       (c++-indent-level . 2)
	       (c-basic-offset . 2)
	       (indent-tabs-mode . nil)
	       (c-offsets-alist . ((arglist-intro . ++)
				   (innamespace . 0)
				   (member-init-intro . ++)
				   (statement-cont . llvm-lineup-statement)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;         Global Emacs settings           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Forcebackup framework for keeping backup files in sane place
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.emacs.d/saves/"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups

(delete-selection-mode 1)

;; Emacs settings
;; Enable line numbers
(global-display-line-numbers-mode)
(setq column-number-mode t)

;; But with exceptions
(add-hook 'shell-mode-hook (lambda () (display-line-numbers-mode -1)))
(add-hook 'eshell-mode-hook (lambda () (display-line-numbers-mode -1)))
(add-hook 'term-mode-hook (lambda () (display-line-numbers-mode -1)))
(add-hook 'Man-mode-hook (lambda () (display-line-numbers-mode -1)))
(add-hook 'vterm-mode-hook (lambda() (display-line-numbers-mode -1)))
(add-hook 'dired-mode-hook (lambda() (display-line-numbers-mode -1)))

;; Autocomplete any "" () [] {}
(electric-pair-mode)

;; Delete all trailing whitespaces, these don't belong to my files
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Ignore case for completion
(setq completion-ignore-case t)
(setq read-buffer-completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; Enable all disabled functions
(setq disabled-command-function nil)

;; C-specific settings
(add-hook 'c-mode-common-hook
  (lambda()
    (local-set-key  (kbd "C-c o") 'ff-find-other-file)))

(setq c-default-style "llvm.org")

(defun turn-off-indent-tabs-mode ()
  (setq indent-tabs-mode nil))
(add-hook 'sh-mode-hook #'turn-off-indent-tabs-mode)
(add-hook 'lisp-mode-hook #'turn-off-indent-tabs-mode)
(add-hook 'emacs-lisp-mode-hook #'turn-off-indent-tabs-mode)
(add-hook 'rustic-mode-hook #'turn-off-indent-tabs-mode)
(add-hook 'qml-mode-hook #'turn-off-indent-tabs-mode)

(defun set-tab-width (width)
  (setq tab-width width))
(add-hook 'rustic-mode-hook (apply-partially #'set-tab-width 4))
(add-hook 'qml-mode-hook (apply-partially #'set-tab-width 4))

(global-set-key "\C-m" 'newline-and-indent)

;; PERFORMANCE WITH LONG LINES
(when (>= emacs-major-version 27)
    (global-so-long-mode 1)
    (setq bidi-inhibit-bpa t)
    (setq bidi-paragraph-direction 'left-to-right))

(defun markdown-html (buffer)
  (princ (with-current-buffer buffer
           (format "<!DOCTYPE html><html><title>Impatient Markdown</title>
<xmp theme=\"united\" style=\"display:none;\"> %s </xmp>
<script src=\"http://strapdownjs.com/v/0.2/strapdown.js\"></script></html>"
                   (buffer-substring-no-properties (point-min) (point-max))))
         (current-buffer)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;        Appearence       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Appearence - gui ;;
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))
(when (fboundp 'horizontal-scroll-bar-mode)
  (horizontal-scroll-bar-mode -1))
(when (fboundp 'menu-bar-mode)
  (menu-bar-mode -1))

;; Appearence - theme ;;
;; solarized ftw
;; (load-theme 'solarized t)
;; (setq cur-theme 'solarized)
(load-theme 'tron-legacy t)

;; the t parameter apends to the hook, instead of prepending
;; this means it'd be run after other hooks that might fiddle
;; with the frame size
;; (add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; Appearence - parentheses highlight
;; Show matching parentheses and do it without a delay
(show-paren-mode 1)

;; We don't really need startup screen
(setq inhibit-startup-screen t)

;; Fonts
;; 90 for scaled sessions
;; 110 for T480 1920*1080 at 100%
;; 120 for X270 on gnome at 100%
(set-face-attribute 'default nil :family "ttf-iosevka" :height 110)

;; Emoji: 😄, 🤦, 🏴󠁧󠁢󠁳󠁣󠁴󠁿
(set-fontset-font t 'symbol "Apple Color Emoji")
(set-fontset-font t 'symbol "Noto Color Emoji" nil 'append)
(set-fontset-font t 'symbol "Segoe UI Emoji" nil 'append)
(set-fontset-font t 'symbol "Symbola" nil 'append)

;; Highlight the current line
(global-hl-line-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;            Functions               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Functions - switch-solarized-theme
(defun switch-solarized-theme ()
 "Toggles the solarized theme in use between dark/light"
 (interactive)
  (if (eq cur-theme 'solarized-dark)
      (progn (setq frame-background-mode 'light)
             (load-theme 'solarized t)
             (setq cur-theme 'solarized-light))
    (progn (setq frame-background-mode 'dark)
           (load-theme 'solarized t)
           (setq cur-theme 'solarized-dark))))

;; Functions - live-markdown
(defun live-markdown ()
  "Enables live previes of markdown buffer"
  (interactive)
  (httpd-start)
  (impatient-mode)
  (imp-set-user-filter 'markdown-html))

    ;;; Stefan Monnier <foo at acm.org>. It is the opposite of fill-paragraph
(defun unfill-paragraph (&optional region)
  "Takes a multi-line paragraph and makes it into a single line of text."
  (interactive (progn (barf-if-buffer-read-only) '(t)))
  (let ((fill-column (point-max))
        ;; This would override `fill-column' if it's an integer.
        (emacs-lisp-docstring-fill-column t))
    (fill-paragraph nil region)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;          Key bindings              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Key bindings - f6 - switch-solarized-theme
(global-set-key [f6] 'switch-solarized-theme)

(defun custom/vterm ()
    "Wrapper around `vterm' function to return it's previous functionality."
    (interactive)
    (vterm "*vterm*"))

;; define-key TODO
;; Key bindings - f2 - eshell
(global-set-key [f2] 'custom/vterm)


;; Key bindings - c-x n / c-x p - next/prev buffer
(global-set-key (kbd "C-x n") 'next-buffer)
(global-set-key (kbd "C-x p") 'previous-buffer)

;; Whitespace on/off
(global-set-key (kbd "C-x w") 'whitespace-mode)

;; Easy unfilling
(define-key global-map "\M-Q" 'unfill-paragraph)

;; Org-mode niceties
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "c85514b33ffedb58963da19bedac23e370a52822f548f9c8a18f34afd33f8c63" default))
 '(package-selected-packages
   '(lsp-ui lsp-jedi company-qml docker-compose-mode dockerfile-mode deadgrep gnugo impatient-mode vterm chess yaml-mode geben php-mode perspective py-autopep8 which-key dap-mode flycheck-rust company rust-mode solarized-theme smart-tabs-mode magit sublimity reverse-im use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
