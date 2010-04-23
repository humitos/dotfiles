; carga rst-mode para los *.rst
; (setq auto-mode-alist  (cons '("\\.rst$" . rst-mode) auto-mode-alist))
;;; ReStructured Text
;(load-library "rst")
;(add-hook 'text-mode-hook 'rst-text-mode-bindings)
;(add-hook 'text-mode-hook 'rst-set-paragraph-separation)
;(add-to-list 'auto-mode-alist '("\\.rst$" . rst-mode) )

(add-to-list 'load-path "~/.emacs.d/")

; carga ruby-mode para los *.rb
(setq auto-mode-alist  (cons '("\\.rb$" . ruby-mode) auto-mode-alist))

; carga python-mode para los *.py
(setq auto-mode-alist  (cons '("\\.py$" . python-mode) auto-mode-alist))

; deshabilita la bienvenida
(setq inhibit-startup-message t)

; carga el ido-mode al inicio
(require 'ido)
(ido-mode t)

;; for puppet files
(autoload 'puppet-mode "puppet-mode" "Puppet mode" t)
(setq auto-mode-alist (append '(("\\.pp$" . puppet-mode))
auto-mode-alist))

;; django mode
(load "django-mode.el")

;; use ipython instead of python
(require 'ipython)
(setq py-python-command-args '( "-colors" "Linux"))

(defadvice py-execute-buffer (around python-keep-focus activate)
  "return focus to python code buffer"
  (save-excursion ad-do-it))

(setenv "PYMACS_PYTHON" "python2.5") 
(require 'pymacs)

(pymacs-load "ropemacs" "rope-")

(provide 'python-programming)

