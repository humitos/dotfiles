;; default .dir-locals.el to use in HOME directory
((python-mode
  . (
     (fill-column . 79)

     ;; Use 4 spaces to indent in Python
     (python-indent-offset . 4)
     ;; autopep8 global configurations
     (py-autopep8-options . ("--global-config=~/.emacs.d/autopep8rc"))
     ;; FlyCheck global configurations
     (flycheck-flake8rc . "~/.emacs.d/flake8rc")

     ;; docformatter global options
     (eval . (setq py-docformatter-options
		   '("--wrap-summaries=120" "--wrap-descriptions=120" "--pre-summary-newline" "--no-blank")))

     ;; use our own virtualenv for this project
     (eval . (pyvenv-workon 'emacs-default))
     )
  ))
