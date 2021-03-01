(use-package org-rich-yank
  :ensure t
  :demand t
  :bind (:map org-mode-map
              ("C-M-y" . org-rich-yank)))
