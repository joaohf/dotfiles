(add-to-list 'custom-theme-load-path "~/opensource/emacs-color-theme-solarized")
(load-theme 'solarized t)

(add-to-list 'load-path "~/.emacs.d/elpa/better-defaults-0.1.2")
(require 'better-defaults)

(setq load-path (cons  "/usr/lib/erlang/lib/tools-2.8/emacs" load-path))
(setq erlang-root-dir "/usr/lib/erlang/")
(setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
(require 'erlang-start)
(require 'erlang-flymake)

(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'flymake)
(defun flymake-erlang-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
		     'flymake-create-temp-inplace))
	 (local-file (file-relative-name temp-file
		(file-name-directory buffer-file-name))))
    (list "/home/joaohf/bin/check_erl_code.sh" (list local-file))))

(add-to-list 'flymake-allowed-file-name-masks '("\\.erl\\'" flymake-erlang-init))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
