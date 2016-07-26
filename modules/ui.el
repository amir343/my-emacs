;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; UI                                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Inhibit Bell Sound
(setq ring-bell-function 'ignore)

;; Answer `y/n` instead of `yes/no`
(defalias 'yes-or-no-p 'y-or-n-p)

;; Jump to other-window after splits
(defun split-window-vertically-and-other-window ()
  (interactive)
  (split-window-vertically)
  (other-window 1)
  )

(defun split-window-horizontally-and-other-window ()
  (interactive)
  (split-window-horizontally)
  (other-window 1)
  )

;; Inhibit menu, tool and scroll bars
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Cut and paste using the clipboard
(setq x-select-enable-clipboard t)

;; Show line numbers
(global-linum-mode 1)

;; Bind Ctrl + Arrow keys (so they work inside Tmux)
(global-set-key "\M-[1;5A"    'backward-paragraph) ; Ctrl + down
(global-set-key "\M-[1;5B"    'forward-paragraph)  ; Ctrl + up
(global-set-key "\M-[1;5C"    'forward-word)       ; Ctrl + right
(global-set-key "\M-[1;5D"    'backward-word)      ; Ctrl + left

;; Window management bindings
(global-set-key (kbd "M-0") 'delete-window) ; expand other panes
(global-set-key (kbd "M-1") 'delete-other-windows) ; expand current pane
(global-set-key (kbd "M-2") 'split-window-vertically-and-other-window)
(global-set-key (kbd "M-3") 'split-window-horizontally-and-other-window)
(global-set-key (kbd "M-s") 'other-window) ; cursor to other pane

;; Provide feature
(provide 'ui)
