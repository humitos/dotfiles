((python-mode
  . (
     ;; This is used to fill the paragraph in 80 columns when pressing M-q
     (fill-column . 80)

     ;; Use 4 spaces to indent in Python
     (python-indent-offset . 4)
     ;; autopep8 global configurations (path must be absolute)
     (py-autopep8-options . ("--global-config=/home/humitos/.autopep8rc"))
     ;; FlyCheck global configurations
     (flycheck-flake8rc . "/home/humitos/.flake8rc")

     ;; docformatter global options
     (py-docformatter-options . ("--wrap-summaries=80" "--wrap-descriptions=80" "--pre-summary-newline" "--no-blank"))

     ;; use our own virtualenv for this project
     (eval . (pyvenv-workon 'emacs-default))
     )
  ))
