;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; General                                                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Store backup files in a common place
(setq backup-directory-alist '(("." . "~/.emacs-backups")))

;; Inhibit tabs
(setq-default indent-tabs-mode nil)

;; Set `tab-width` to two spaces
(setq-default tab-width 2)

;; Show column number
(setq column-number-mode t)

;; Show trailing whitespaces
(setq-default show-trailing-whitespace t)

;; Save history between sessions
(savehist-mode 1)

;; Set default browser
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program my-default-browser)

;; Set Deft settings
(setq deft-directory "/data/Dropbox/notes")
(global-set-key (kbd "C-x C-g") 'deft-find-file)
(global-set-key [f8] 'deft)

;; Provide feature
(provide 'general)
