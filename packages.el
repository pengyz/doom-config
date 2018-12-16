;; -*- no-byte-compile: t; -*-
;;; ~/.config/doom/packages.el

(disable-packages! company-irony company-c-headers company-irony-c-headers flycheck-irony irony ivy-rtags rtags)

(package! avy)
(package! lsp-mode)
(package! lsp-ui)
(package! company-lsp)
(package! spinner);required by lsp mode
