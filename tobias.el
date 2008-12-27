;; goto line function C-c C-g
(global-set-key [ (control c) (control g) ] 'goto-line)

(setq column-number-mode t)
(setq confirm-kill-emacs (quote y-or-n-p))
(setq show-paren-mode t)
(setq transient-mark-mode t)
(setq blink-cursor-mode t)

;; set keys for comment/uncomment region
;(global-set-key [ (control c) (control c) ] 'comment-region)
;(global-set-key [ (control c) (control u) ] 'uncomment-region)

;; map alt to meta
(setq mac-option-modifier 'meta)

;(set-face-font `default "-apple-envy code r-medium-r-normal--14-0-72-72-m-0-iso10646-1")
(set-face-font `default "-apple-inconsolata-medium-r-normal--16-0-72-72-m-0-iso10646-1")


(set-background-color "black")
(set-foreground-color "white")

;; Never iconify...
(global-unset-key [(control z)])
(global-unset-key [(control x) (control z)])

;; Ctrl-Tab switches buffers
;(global-set-key [(ctrl tab)] 'bury-buffer)


;; load rinari
;; to install rinari:
;; git clone git://github.com/eschulte/rinari.git
;; mv rinari ~/.rinari
;; cd ~/.rinari
;; git submodule init
;; git submodule update
(add-to-list 'load-path (concat dotfiles-dir "../.rinari"))
(require 'rinari)

(add-to-list 'load-path (concat dotfiles-dir "../.emacs.local/vendor"))

;; for git
(require 'vc-git)
(when (featurep 'vc-git) (add-to-list 'vc-handled-backends 'GIT))
(require 'git)
(autoload 'git-blame-mode "git-blame"
           "Minor mode for incremental blame for Git." t)
(require 'gitsum)

;; haml and sass modes
(require 'haml-mode nil 't)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))

(require 'sass-mode nil 't)
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

;; color theme
;(add-to-list 'load-path (concat dotfiles-dir "../.emacs.local/vendor/color-theme-6.6.0"))
;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-hober)

;; always highlight the current line
;(when window-system (global-hl-line-mode t)
;      (custom-set-faces `(hl-line ((t (:inherit highlight :background "grey30"))))))
;                    (set-face-background 'hl-line "yellow"))
;;(set-face-foreground 'hl-line 'inherit)

