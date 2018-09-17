;; My general settings...

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  ;;(add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

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
(set-frame-font "DejaVu Sans Mono-11")

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

; Syntax highlighting
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

; Configure ggtags
(require 'ggtags)
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode)
              (ggtags-mode 1))))

(define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
(define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
(define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
(define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
(define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
(define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)

(define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)

;; Start of the emacs "customize" preferences. DON'T TOUCH THIS!
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(c-default-style "linux")
 '(custom-enabled-themes (quote (tango-dark)))
 '(global-linum-mode t)
 '(ido-mode (quote both) nil (ido))
 '(lisp-body-indent 2)
 '(lisp-indent-maximum-backtracking 2)
 '(lisp-loop-forms-indentation 2)
 '(lisp-loop-keyword-indentation 2)
 '(lisp-simple-loop-indentation 2)
 '(lisp-tag-body-indentation 2)
 '(lisp-tag-indentation 2)
 ;'(package-selected-packages (quote (helm projectile ggtags ztree)))
 '(recentf-mode t)
 '(ruby-indent-level 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
