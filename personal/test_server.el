(defun my-start-emacs (frame)
  "load window layout"
  (with-selected-frame frame
    (when (daemonp)
      (purpose-load-window-layout server-name))))

 (add-to-list 'after-make-frame-functions #'my-start-emacs)
