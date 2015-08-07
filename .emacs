(add-to-list 'custom-theme-load-path "~/.emacs.d/custom/emacs-color-theme-solarized")
(load-theme 'solarized t)

(add-to-list 'load-path "~/.emacs.d/custom/better-defaults")
(require 'better-defaults)

(setq load-path (cons  "/usr/lib/erlang/lib/tools-2.8/emacs" load-path))
(setq erlang-root-dir "/usr/lib/erlang/")
(setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
(require 'erlang-start)

(require 'erlang-flymake)


(require 'flyspell)
;;(setq flyspell-issue-message-flg nil)
(add-hook 'erlang-mode-hook  (lambda () (flyspell-prog-mode)))

(setq ispell-dictionary "english")


(add-to-list 'load-path "~/.emacs.d/custom/Fill-Column-Indicator")
(require 'fill-column-indicator)
