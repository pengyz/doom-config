;;; ~/.config/doom/config.el -*- lexical-binding: t; -*-

(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))

(add-to-list 'default-frame-alist '(fullscreen . maximized))


;; multi-term setting
(setq multi-term-dedicated-select-after-open-p t
      multi-term-dedicated-window-height 15)
(global-set-key (kbd "<f4>") 'multi-term-dedicated-toggle)


(add-hook 'c++-mode
          'lsp-ccls-enable)

(def-package! lsp-mode
  :commands lsp
  :init
  (setq lsp-auto-guess-root t)
  (setq lsp-prefer-flymake t))

(def-package! lsp-ui
  :demand t
  :config
  (setq
   lsp-ui-flycheck-enable nil
   lsp-ui-sideline-enable nil
   lsp-ui-sideline-ignore-duplicate t
   lsp-ui-doc-header nil
   lsp-ui-doc-include-signature nil
   lsp-ui-doc-background (doom-color 'base4)
   lsp-ui-doc-border (doom-color 'fg)

   lsp-ui-peek-force-fontify nil
   lsp-ui-peek-expand-function (lambda (xs) (mapcar #'car xs))))


  (map! :after lsp-ui-peek
        :map lsp-ui-peek-mode-map
        "h" #'lsp-ui-peek--select-prev-file
        "j" #'lsp-ui-peek--select-next
        "k" #'lsp-ui-peek--select-prev
        "l" #'lsp-ui-peek--select-next-file)

(require 'company)
(setq company-idle-delay 0.2
      company-minimum-prefix-length 3)
