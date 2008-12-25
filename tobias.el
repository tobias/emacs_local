;; goto line function C-c C-g
(global-set-key [ (control c) (control g) ] 'goto-line)

;; set keys for comment/uncomment region
(global-set-key [ (control c) (control c) ] 'comment-region)
(global-set-key [ (control c) (control u) ] 'uncomment-region)

;; map alt to meta
(setq mac-option-modifier 'meta)

(set-background-color "black")
(set-foreground-color "white")

;; Never iconify...
(global-unset-key [(control z)])
(global-unset-key [(control x) (control z)])

;; Ctrl-Tab switches buffers
(global-set-key [(ctrl tab)] 'bury-buffer)

;; always highlight the current line
(global-hl-line-mode t)

;; load rinari
;; to install rinari:
;; git clone git://github.com/eschulte/rinari.git
;; mv rinari ~/.rinari
;; cd ~/.rinari
;; git submodule init
;; git submodule update
(add-to-list 'load-path (concat dotfiles-dir "../.rinari"))
(require 'rinari)

(add-to-list 'load-path (concat dotfiles-dir "../.emacs.local"))

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

