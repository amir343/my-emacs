;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load Modules
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(add-to-list 'load-path (concat root "modules"))

(dolist (file '(my-packages
                general
                ui
                theme
                my-erlang
                my-ido
                my-multiple-cursors
                markdown))
  (require file))
