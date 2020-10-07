;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; pipfstarrd's emacs init.el ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;     ⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢸
;;     ⢀⢀⢀⢀⢀⢀⢀⢀⢀⡀⣠⢔⢔⣯⣷⣶⣿⡾⠿⠶⠦⠄⠈⠉⡟⠛⠓⠒⠲⠶⠦⠤⣤⣤⣀⣀⣀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢸
;;     ⢀⢀⢀⢀⢀⢀⢀⢄⣤⣨⢬⣾⣿⠛⠋⠉⢀⢀⢀⢀⢀⢀⢀⢀⠁⢀⢀⢀⢀⢀⢀⢀⢀⢀⠈⠉⠉⠛⠛⠲⠶⢦⣤⣄⣀⢀⣼
;;     ⢀⢀⢀⢀⢀⢀⣠⣿⣿⣿⣿⡿⠁⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⠈⠉⠛⡿⠆
;;     ⢀⢀⢀⢀⢀⢰⣿⣿⣿⣿⠳⠁⢀⢀⢀⢀⢀⢀⠠⢀⢀⢀⢀⢀⢡⢀⢀⢀⢀⢀⢀⢀⠠⢀⢀⢀⠠⢀⢀⢀⢀⢀⢀⢀⢀⢰⡇
;;     ⢀⢀⢀⢀⢀⣿⣿⣿⣿⣇⠃⢀⢀⢀⡀⢀⢀⠠⡁⢀⢀⢀⢀⢀⢀⡇⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢸⠁
;;     ⢀⢀⣤⢀⣸⣿⣿⣿⣿⠸⢀⢀⢀⢀⡆⠡⢀⢀⠂⢀⢀⢀⠃⢀⢀⠍⢀⢀⢀⢀⢀⣀⣀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⡿
;;     ⢀⢀⠋⣠⣿⣿⣿⣿⣿⡄⢀⢀⢀⢀⠁⢀⣀⡀⢀⢀⢀⢀⢈⣴⠲⠰⢤⠷⠄⢀⢀⣼⣿⣿⡆⢀⢀⢀⢀⢀⢀⢀⢀⢀⢠⡇
;;     ⠂⢀⢠⣿⣿⣿⡿⢿⣿⠇⢀⢀⢀⢀⡴⢺⣯⠁⢀⢀⢀⢀⢸⣾⠠⢀⢸⣦⡄⢀⣴⣿⣿⡏⠁⢀⢀⢀⢀⢀⢀⢀⢀⢀⢸⠃
;;     ⠠⠁⢸⣿⣿⣿⢀⣸⣿⢠⢀⢀⠠⠸⡟⢿⡿⢀⢀⢀⢀⢀⠈⠛⢀⢀⢸⣿⣿⣾⣿⢻⣿⣷⣄⡀⢀⢀⢀⢀⢀⢀⢀⢀⣿
;;     ⢀⢀⣾⣿⣿⣿⣿⣿⡏⣼⢀⢀⢰⠄⠈⢀⠁⢀⢀⢀⢀⢀⢀⢀⢀⢸⢸⣿⣿⡿⢡⣿⣿⣿⣿⡇⢀⢀⢀⢀⢀⢀⢀⢀⡇
;;     ⢀⢀⣟⣿⣿⣿⣿⣿⡇⣿⢀⢀⠸⠈⢀⢀⢀⢀⢀⡀⢀⢀⢀⢀⢀⢀⡾⣳⣿⣥⣿⣿⣿⣿⡿⠛⠄⢀⢀⢀⢀⢀⢀⢸⠃
;;     ⢀⢀⢨⠝⠿⣿⣿⣿⣷⣽⠃⢰⢀⡀⢀⢁⢀⢀⢀⢀⢀⠈⢀⣠⣶⢀⢀⣿⣿⣿⣿⣿⣿⣿⠆⢀⣀⡆⢀⢀⢀⢀⢀⣾
;;     ⢀⢀⢀⠈⢀⢼⢽⣿⢿⣿⢀⣼⢀⠈⠈⢀⠂⠤⢀⣀⣠⣤⣾⡇⣿⢀⠘⢀⢻⣿⣿⠿⠛⠁⢀⠪⠉⢀⢀⢀⢀⢀⢀⡏
;;     ⢀⠠⢀⢊⠄⠨⡀⣿⠈⣟⢀⡗⢀⠘⢀⠑⢀⢀⣸⣿⣿⣿⣟⡄⢰⡆⢀⢤⣼⠋⠁⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢸⠇
;;     ⢀⢀⢀⢀⢂⢀⡇⢻⢀⣿⡀⢀⢀⡀⠱⢀⢀⢀⣿⣿⡿⣿⣋⣠⡿⢀⢀⠈⠉⢀⢀⢀⢀⢀⢀⢀⢀⡀⢀⣄⣀⡀⣾
;;     ⢀⢀⠈⡀⠈⢤⣿⠌⡀⡟⣇⢀⢀⢡⢀⢀⠠⣤⣈⡉⠹⣷⣾⣜⣒⡀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⡀⠁⢀⠉⠛⠛⡿⠶⠦⡀
;;     ⢀⢀⢀⢀⢀⠋⠁⣰⣹⣿⢿⣆⢦⣩⣧⡐⠄⠊⠿⢿⣿⣿⣿⣿⣿⣷⣄⢀⢀⣿⣿⣿⣿⣷⣶⣶⡶⠃⢀⢀⢀⢸⠁
;;     ⢀⢀⢀⡄⢀⢀⡴⣳⣿⣿⣯⡿⣷⣭⣭⣥⣖⢀⠌⠡⠈⠛⠻⢿⣿⣿⣿⣦⣄⣿⣿⣿⣿⣿⣿⣿⠁⢀⢀⢀⢀⠘
;;     ⢀⢀⢀⠇⢀⠞⣱⣿⣿⣿⣿⣿⣾⣽⣟⣻⣿⠦⢀⢀⠠⢈⡀⠄⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣤⡀⢀⢀⠁
;;     ⢀⠊⢠⢀⢢⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⢀⢀⠉⠻⢢⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
;;     ⢀⢀⠄⢀⢈⢺⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⡠⣀⢀⣼⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿
;;     ⢀⠈⠂⢀⣄⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡴⣆⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
;;     ⢠⠁⢄⢀⠈⠡⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟
;;     ⢀⠂⡀⠑⢀⢀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷
;;     ⢀⠠⠠⢀⢀⢀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
;;     ⢀⢀⠂⢀⢸⢀⢠⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
;;     ⢀⢀⢀⠄⠈⣠⣮⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏
;;     ⢀⢀⢀⢀⢄⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿
;;     ⢀⢀⢀⠈⡾⠁⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁
;;     ⢀⢀⠁⢀⠁⢀⠈⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠁

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
;; -- Packages - MELPA
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

;; Packages - MELPA ;;
;; Adding and activating MELPA with a warning
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl (warn "Your version of Emacs does not support SSL connections."))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t))

;; activate all the packages (in particular autoloads)
(package-initialize)

;; fetch the list of packages available
;;(unless package-archive-contents
;;  (package-refresh-contents))

;; Packages - use-package init ;;
(eval-when-compile (require 'use-package))

;; Auto install packages
(require 'use-package-ensure)
(setq use-package-always-ensure t)

;; Keep them up-to-date
;;(use-package auto-package-update
;;  :config
;;  (setq auto-package-update-delete-old-versions t)
;;  (setq auto-package-update-hide-results t)
;;  (auto-package-update-maybe))

;; Packages - reverse-im
;; Package reverse-im - translate Russian input into English
(use-package reverse-im
  :custom
  (reverse-im-input-methods '("russian-computer"))
  :config
  (reverse-im-mode t))

;; Packages - sublimity
;; Package sublimity - show minimap of the file
(use-package sublimity
  :config
  (require 'sublimity-scroll)
  (sublimity-mode 1))

;; Packages - all-the-icons
;; Nice icons for neotree
(use-package all-the-icons)

;; Packages - neotree
;; Package neotree - show directory structure
(use-package neotree
  :bind ([f8] . neotree-toggle)
  :config
 (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

(use-package magit)

(use-package reverse-im)

(use-package smart-tabs-mode)

(use-package solarized-theme)

(use-package rust-mode)

(use-package tron-legacy-theme)

;;(use-package company
;;  :config
;;  (add-hook 'after-init-hook 'global-company-mode)
;;  (setq company-idle-delay 0))

;;(use-package company-jedi
;;  :config
;;  (defun my/python-mode-hook ()
;;    (add-to-list 'company-backends 'company-jedi))
;;  (add-hook 'python-mode-hook 'my/python-mode-hook)
;;  (setq jedi:complete-on-dot t)
;;  (add-hook 'python-mode-hook 'jedi:setup))

;;(use-package helm-company
;;  :config
;;  (define-key company-mode-map (kbd "C-:") 'helm-company)
;;  (define-key company-active-map (kbd "C-:") 'helm-company))

;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
;;(setq lsp-keymap-prefix "C-l")

;;(use-package lsp-mode
;;    :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
;;           (python-mode . lsp)
;;	   (cc-mode . lsp)
;;	   (go-mode . lsp)
;;	   (rust-mode . lsp)
	   ;; if you want which-key integration
;;            (lsp-mode . lsp-enable-which-key-integration))
;;    :commands lsp)

;;(use-package lsp-jedi
;;  :ensure t
;;  :config
;;  (with-eval-after-load "lsp-mode"
;;    (add-to-list 'lsp-disabled-clients 'pyls)
;;    (add-to-list 'lsp-enabled-clients 'jedi)))

;; optionally
;;(use-package lsp-ui :commands lsp-ui-mode)
;; if you are helm user
;;(use-package helm-lsp :commands helm-lsp-workspace-symbol)
;; if you are ivy user
;;(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
;;(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

;; optional if you want which-key integration
(use-package which-key
    :config
    (which-key-mode))

(use-package py-autopep8)
;; At the moment in interferes with my company's git workflow
;; Excessive reformat on save leads to too many changes in git commits
;;  :config
;;  (add-hook 'python-mode-hook 'py-autopep8-enable-on-save))

(use-package flycheck
  :config
  (global-flycheck-mode)
  (setq flycheck-checker-error-threshold 3000))

(use-package perspective
  :config
  (persp-mode)
  (setq persp-state-default-file "~/.emacs.d/persp/persp-state")
  (add-hook 'kill-emacs-hook #'persp-state-save))

(use-package multi-term
  :config
  (setq multi-term-program "/bin/bash"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;         Global Emacs settings           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Preferred tab width
(setq custom-tab-width 8)

;;(smart-tabs-insinuate 'c 'javascript)

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
(global-linum-mode t)

;; But with exceptions
(add-hook 'shell-mode-hook (lambda ()
			     (linum-mode -1)))
(add-hook 'eshell-mode-hook (lambda ()
			      (linum-mode -1)))
(add-hook 'term-mode-hook (lambda ()
			     (linum-mode -1)))

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

(setq-default c-basic-offset 8
              tab-width 8
              indent-tabs-mode t)

(add-hook 'c-mode-common-hook '(lambda () (c-toggle-auto-state 1)))
(add-hook 'c-mode-common-hook '(lambda () (c-toggle-hungry-state 1)))

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
;;(load-theme 'solarized-dark t)
;;(setq cur-theme 'solarized-dark)
(load-theme 'tron-legacy t)

;; Appearence - parentheses highlight
;; Show matching parentheses and do it without a delay
(show-paren-mode 1)

(set-face-attribute 'default nil :family "ttf-iosevka" :height 90)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;            Functions               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Functions - switch-solarized-theme
;;(defun switch-solarized-theme ()
;;  "Toggles the solarized theme in use between dark/light"
;;  (interactive)
;;   (if (eq cur-theme 'solarized-dark)
;;      (progn (load-theme 'solarized-light t)
;;       (setq cur-theme 'solarized-light))
;;    (progn (load-theme 'solarized-dark t)
;;     (setq cur-theme 'solarized-dark))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;          Key bindings              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Key bindings - f6 - switch-solarized-theme
;;(global-set-key [f6] 'switch-solarized-theme)

;; Key bindings - f2 - eshell
(global-set-key [f2] 'eshell)

;; Key bindings - c-x n / c-x p - next/prev buffer
(global-set-key (kbd "C-x n") 'next-buffer)
(global-set-key (kbd "C-x p") 'previous-buffer)

;; Whitespace on/off
(global-set-key (kbd "C-x w") 'whitespace-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   '("c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "d0aa1464d7e55d18ca1e0381627fac40229b9a24bca2a3c1db8446482ce8185e" default))
 '(fci-rule-color "#073642")
 '(highlight-changes-colors '("#d33682" "#6c71c4"))
 '(highlight-symbol-colors
   '("#3b2b40b432a1" "#07ab45f64ce9" "#475733ea3554" "#1d623c04567f" "#2d5343d8332c" "#436f35f73166" "#0613413e597e"))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   '(("#073642" . 0)
     ("#5b7300" . 20)
     ("#007d76" . 30)
     ("#0061a8" . 50)
     ("#866300" . 60)
     ("#992700" . 70)
     ("#a00559" . 85)
     ("#073642" . 100)))
 '(hl-bg-colors
   '("#866300" "#992700" "#a7020a" "#a00559" "#243e9b" "#0061a8" "#007d76" "#5b7300"))
 '(hl-fg-colors
   '("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36"))
 '(hl-paren-colors '("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900"))
 '(lsp-ui-doc-border "#93a1a1")
 '(nrepl-message-colors
   '("#dc322f" "#cb4b16" "#b58900" "#5b7300" "#b3c34d" "#0061a8" "#2aa198" "#d33682" "#6c71c4"))
 '(package-selected-packages
   '(lsp-jedi which-key lsp-treemacs helm-lsp lsp-ui lsp-mode multi-term perspective py-autopep8 flycheck vterm tron-legacy-theme tron-legacy auto-package-update all-the-icons-dired all-the-icons-gnus all-the-icons-ibuffer all-the-icons-ivy all-the-icons-ivy-rich all-the-icons use-package sublimity solarized-theme smart-tabs-mode rust-mode reverse-im python-mode neotree magit go-mode))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(reverse-im-input-methods '("russian-computer"))
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#dc322f")
     (40 . "#ca7966832090")
     (60 . "#c05578c91534")
     (80 . "#b58900")
     (100 . "#a6088eed0000")
     (120 . "#9e3a91a60000")
     (140 . "#9628943b0000")
     (160 . "#8dc596ad0000")
     (180 . "#859900")
     (200 . "#76ef9b6045e8")
     (220 . "#6cd69ca95b9d")
     (240 . "#5f5f9e06701f")
     (260 . "#4c1a9f778424")
     (280 . "#2aa198")
     (300 . "#3002984eaf4d")
     (320 . "#2f6f93e8bae0")
     (340 . "#2c598f79c66f")
     (360 . "#268bd2")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#002b36" "#073642" "#a7020a" "#dc322f" "#5b7300" "#859900" "#866300" "#b58900" "#0061a8" "#268bd2" "#a00559" "#d33682" "#007d76" "#2aa198" "#839496" "#657b83"))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
