;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(unless (require 'quelpa nil t)
  (with-temp-buffer
    (url-insert-file-contents "https://raw.github.com/quelpa/quelpa/master/bootstrap.el")
    (eval-buffer)))

(unless (require 'esoteric-emacs nil t)
    (quelpa '(esoteric-emacs :repo "louispan/esoteric-emacs" :fetcher github))
    (require 'esoteric-emacs))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Other settings

(esoteric-package-install 'zenburn-theme)
(load-theme 'zenburn)
;; zenburn region and hl-line is too hard to see
(face-spec-set 'region '((t (:background "#2247c4"))))
(face-spec-set 'hl-line '((t (:background "#505050"))))
(sml/setup)
;; fix for xterm-color package breakages
;; https://github.com/syl20bnr/spacemacs/issues/7393
(fset 'xterm-color-unfontify-region 'font-lock-default-unfontify-region)
;; ;; (esoteric-distinct-fringe-with 0.05)
;; ;; (esoteric-fix-region-distant-foreground)

;; Generally useful keys & functions
;;
;; <F1> is same as C-h
;; <F1> b    view key binding
;; <F1> v    view variable
;; <F1> f    view function
;; <F1> k    view key sequence
;; <F1> m    view mode
;; <F1> a    apropos - search for commmands
;; <S-f10>   toggle enabling menu (This is an esoteric mapping)
;; <f10>    open menu

;; M-x      evaluate function
;; M-:      evaluate arbitrary elisp (eval-expression)
;; C-j      evaluate selected text as elisp

;; Quiting
;; C-x C-c (save-buffers-kill-terminal) Quit emac
;; <ESC> <ESC> <ESC> (keyboard-escape-quit)
;; M-c Abort partially typed command 'keyboard-quit' (was C-g before esoteric changes)

;; In cua mode:
;; shift-arrow  selects
;; ctrl-space  sticky normal select
;; alt-enter  block selects (customised cua-rectangle-mark-key)

;; (global-unset-key key) ; to unset a keybinding

;; https://www.emacswiki.org/emacs/EmacsNewbieWithIcicles
;; ‘M-x top-level’ to get back to the top level of Emacs, after being submerged in a recursive edit session. Use this if you see [...] (or [[...]], and so on) in the ModeLine.
;; Use ‘C-h l’ to see what the last 300 keys you typed were (this includes mouse and menu actions; in Emacs, “key” is pretty general). Use this to try to figure out how you got into the mess that you’re in!

;; Rename open buffers by:
;; M-x dired-jump
;; then in dired-mode
;; R to rename
;; M-x dired-summary or ? in dired-mode for other commands

;; Tramp: Allow editing over ssh
;; C-x C-f /remotehost:filename  RET (or /method:user@remotehost:filename)
;; Or as root:
;; C-x C-f /su::/etc/hosts
;; C-x C-f /sudo::/etc/hosts

;; Emacs in daemon mode
;; http://www.tychoish.com/posts/running-multiple-emacs-daemons-on-a-single-system/
;; (setq server-use-tcp t) ; in order for multiple servers
;; Start default server:
;; emacs --daemon
;; Start named server:
;; eamcs --daemon=foo
;; https://www.emacswiki.org/emacs/EmacsClient
;; To run a daemon automatically use:
;; --alternate-editor=""
;; Connect to default daemon
;; emacsclient --alternate-editor="" -c "$@"
;; Connect to named daemon
;; emacsclient --alternate-editor="" -f foo -c "$@"
;; emacsclient --alternate-editor="" --server-file=foo -c "$@"
