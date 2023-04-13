(require 'package)
(add-to-list 'package-archives
  '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)
(menu-bar-mode -1)
(tool-bar-mode -1) 

(set-face-attribute 'default nil :height 135)
(set-frame-parameter (selected-frame) 'alpha '(98 . 50))
(add-to-list 'default-frame-alist '(alpha . (98 . 50)))
(electric-pair-mode t)

(setq make-backup-files nil)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
