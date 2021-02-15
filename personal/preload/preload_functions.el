;; set colors for my emacs server instances
(when (string-match "fulcro" server-name)
  (setq default-frame-alist
        (append default-frame-alist
                '((background-color . "#93DB80")
                  (cursor-color . "yellow")
                  )))
  ;; or set a color-theme, e.g., (color-theme-classic)
  )
