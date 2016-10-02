(require 'ido)
(ido-mode t)

;; show column number
(setq column-number-mode t)

;; word-count mode
(require 'wc-mode)
(global-set-key "\C-cw" 'wc-mode)

(define-globalized-minor-mode my-global-wc-mode wc-mode
  (lambda () (wc-mode 1)))

(my-global-wc-mode 1)

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "gfm-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

(provide 'set_misc)
