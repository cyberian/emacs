; ======================================================================
; Sample .emacs file.
; Lines starting with ; are comments and do not add functionality.
; ======================================================================

;;; turn on auto-fill (emacs 19)
(setq-default auto-fill-function 'do-auto-fill)

;;; Allow extra space at the end of the line
(setq-default fill-column 80)

;;; Example of setting a variable
;;; This particular example causes the current line number to be shown
;;; Remove the ; in front to turn this feature on.
; (setq-default line-number-mode t)

;;; Example of binding a key
;;; This particular example binds "META =" to the "goto-line" function.
;;; Remove the ; in front to turn this feature on.
(global-set-key "\M-g"  'goto-line)

(setq c-tab-always-indent t)
(define-key global-map (kbd "RET") 'newline-and-indent)

(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
(global-set-key "\C-i" 'other-window)

;; turn on font-lock mode
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)

;; inhibit startup message
(setq inhibit-startup-message   t)

;; color coding
(load "hilit19")

;; disable menubar
(menu-bar-mode -1)

;; display current time and load avg on the mode line
(display-time)