(require 'window-purpose)
(purpose-mode)


(add-to-list 'purpose-user-mode-purposes '(cider-repl-mode . cider))
(add-to-list 'purpose-user-mode-purposes '(clojure-mode . coding))
(add-to-list 'purpose-user-mode-purposes '(org-mode . org))
(add-to-list 'purpose-user-mode-purposes '(w3m-mode . w3m))

(purpose-compile-user-configuration)
