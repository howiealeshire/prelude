(require 'clj-refactor)

(defun my-clojure-mode-hook ()
  (clj-refactor-mode 1)
  (yas-minor-mode 1) ; for adding require/use/import statements
  ;; This choice of keybinding leaves cider-macroexpand-1 unbound
  (cljr-add-keybindings-with-prefix "C-c C-m"))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)

(defun my/dashboard-banner ()
  """Set a dashboard banner including information on package initialization
   time and garbage collections."""
  (setq dashboard-banner-logo-title
        (format "Emacs ready in %.2f seconds with %d garbage collections."
                (float-time (time-subtract after-init-time before-init-time)) gcs-done)))

(use-package dashboard
  :init
  (add-hook 'after-init-hook 'dashboard-refresh-buffer)
  (add-hook 'dashboard-mode-hook 'my/dashboard-banner)
  :config
  (setq dashboard-startup-banner 'logo)
  (dashboard-setup-startup-hook))


(use-package org-roam
             :ensure t
             :hook
             (after-init . org-roam-mode)
             :custom
             (org-roam-directory "~/Documents/org/org-roam")
             :bind (:map org-roam-mode-map
                         (("C-c n l" . org-roam)
                          ("C-c n f" . org-roam-find-file)
                          ("C-c n g" . org-roam-graph))
                         :map org-mode-map
                         (("C-c n i" . org-roam-insert))
                         (("C-c n I" . org-roam-insert-immediate))))
