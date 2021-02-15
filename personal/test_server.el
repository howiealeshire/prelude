(defun my-start-emacs (frame)
  "load window layout"
  (with-selected-frame frame
    (when (daemonp)
      (when (string-match "fulcro" server-name)
        (purpose-load-window-layout "fulcro-app"))
      (when (string-match "org" server-name)
        (purpose-load-window-layout "org-mode"))
      )))


 (add-to-list 'after-make-frame-functions #'my-start-emacs)
