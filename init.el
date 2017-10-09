;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load Modules
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(add-to-list 'load-path (concat root "modules"))

(setq my-default-browser "open")

(dolist (file '(my-packages
                ui
                theme
                my-erlang
                my-ido
                my-multiple-cursors
                markdown
                org
                deft
                general))
  (require file))
