;; My general settings...

; Disable bell sound
(setq visible-bell t)

; Show line number in mode line
(line-number-mode 1)

; Show column number in mode line
(column-number-mode 1)

; Hide toolbar
(if window-system
    (tool-bar-mode 0))

; Hide scroll-bar
(if window-system
    (scroll-bar-mode -1))

; Enable mouse wheel
(if window-system
    (mouse-wheel-mode t))

; Remove the menu bar
(menu-bar-mode -1)

; Do not create backup files
(setq make-backup-files nil)

; Set location
(setq my-location (intern (downcase (system-name))))

; Configure indentation
(setq default-tab-width 4)

; Change the font
(set-frame-font "Liberation Mono-11")

; Set copy to clipboard
(setq x-select-enable-clipboard t)

; Make keys like 'end' and 'delete' work as expected
(global-set-key [delete] 'delete-char)
(global-set-key [kp-delete] 'delete-char)
(global-set-key [end] 'end-of-line)
(global-set-key [C-end] 'end-of-buffer)
(global-set-key [home] 'beginning-of-line)
(global-set-key [C-home] 'beginning-of-buffer)

; Keys to ease moving through windows
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

; Syntax hightlighting
(global-font-lock-mode t)

; Highlight matching parenthesis
(show-paren-mode t)

; Tabs are evil
(setq-default indent-tabs-mode nil)

; Auto-indent
(add-hook 'lisp-mode-hook '(lambda ()
  (local-set-key (kbd "RET") 'newline-and-indent)))

; Lines with trailings spaces are evil, too. But, since they are not *that*
; evil, highlight them with a color more discrete than the default red
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "gray25")

; Scroll one line at a time
(setq scroll-conservatively 100)

; UTF-8
(prefer-coding-system 'utf-8)

; Disable startup screen
(setq inhibit-startup-screen t)

;; Start of the emacs "customize" preferences. DON'T TOUCH THIS!
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(global-linum-mode t)
 '(highlight-current-line-globally nil nil (highlight-current-line))
 '(ido-mode (quote both) nil (ido))
 '(lisp-body-indent 2)
 '(lisp-indent-maximum-backtracking 2)
 '(lisp-loop-forms-indentation 2)
 '(lisp-loop-keyword-indentation 2)
 '(lisp-simple-loop-indentation 2)
 '(lisp-tag-body-indentation 2)
 '(lisp-tag-indentation 2)
 '(recentf-mode t)
 '(ruby-indent-level 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
