(use-package quelpa
  :init
  (setq quelpa-self-upgrade-p nil))

(use-package quelpa-use-package
  :after (quelpa)
  :config
  (quelpa-use-package-activate-advice))


(use-package bookmark+
  :quelpa (bookmark+ :fetcher github :repo "emacsmirror/bookmark-plus")
  ;; [...] your :init and :config
  )


(require 'bookmark+)
