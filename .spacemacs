;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; orsudo add-apt-repository ppa:kelleyk/emacs `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     javascript
     php
     python
     html
     csv
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     bibtex
     common-lisp
     deft
     emacs-lisp
     ess
     ;; exwm
     git
     gnus
     haskell
     helm
     latex
     markdown
     org
     ;; osx
     ;; poetry
     scheme
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     syntax-checking
     typography
     ;; version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(visual-fill-column
                                      sicp
                                      nord-theme
                                      gnugo
                                      fountain-mode
                                      gnu-apl-mode
                                      sage-shell-mode
                                      spray)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(org-projectile
                                    persp-mode)
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'org-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(nord
                         base16-ocean
                         material
                         solarized-dark
                         gotham
                         monokai
                         misterioso
                         solarized-light
                         leuven
                         spacemacs-dark
                         spacemacs-light
                         zenburn)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state nil
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Iosevka Type"
                               ;; :size 30
                               :weight normal
                               :width normal
                               :powerline-scale 1.0
                               )
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$'. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
    (setenv "PATH" (concat (getenv "PATH") ":/usr/bin:/usr/local/bin:/Library/TeX/texbin"))
    (setq exec-path (append exec-path '("/usr/bin")))
    (setq exec-path (append exec-path '("/usr/local/bin")))
    (setq exec-path (append exec-path '("/Library/TeX/texbin")))
  (setq TeX-engine-alist
        '((xelatex "XeLaTeX" "xetex" "xelatex")))
  (add-hook 'LaTeX-mode-hook
            '(lambda ()
               (setq TeX-engine 'xelatex)
               (TeX-fold-mode 1)
               (visual-line-mode)))
  (custom-set-variables '(pdf-latex-command "xelatex"))
  (set-default 'preview-scale-function 0.8)

  (require 'centered-cursor-mode)
  (define-global-minor-mode my-global-centered-cursor-mode centered-cursor-mode
    (lambda ()
      (when (not (memq major-mode
                       (list 'slime-repl-mode
                             'shell-mode
                             'term-mode
                             'ansi-term-mode
                             'inferior-python-mode)))
        (centered-cursor-mode))))
  (my-global-centered-cursor-mode 1)

  (global-set-key [f8] 'neotree-toggle)

  (custom-set-variables '(typo-language "English"))

  ;; (setq mouse-autoselect-window t)

  (global-vi-tilde-fringe-mode -1)

  (setq deft-directory "~/Dropbox/notes")
  (setq deft-use-filename-as-title t)
  (setq deft-use-filter-string-for-filename t)

  (setq org-startup-truncated nil)
  (setq org-hide-emphasis-markers t)
  (setq org-pretty-entities t)
  (setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f"
                                "xelatex -interaction nonstopmode %f"))
  (setq org-support-shift-select t)

  (require 'visual-fill-column)
  (add-hook 'text-mode-hook 'typo-mode)
  (add-hook 'text-mode-hook 'turn-on-visual-line-mode)
  (add-hook 'text-mode-hook 'visual-fill-column-mode)
  (add-hook 'org-mode-hook (lambda ()
                             (adaptive-wrap-prefix-mode -1)))
  (add-hook 'org-mode-hook 'org-indent-mode)
  ;; (add-hook 'org-mode-hook 'adaptive-wrap-prefix-mode)
  (add-hook 'prog-mode-hook 'turn-on-visual-line-mode)
  (add-hook 'prog-mode-hook 'adaptive-wrap-prefix-mode)

  (require 'ox-odt)

  (setq org-odt-preferred-output-format "docx")

  (setq doc-view-continuous t)

  ;; Use a minimal cursor
  (setq default-cursor-type 'hbar)

  ;; Get rid of the indicators in the fringe
  (mapcar (lambda(fb) (set-fringe-bitmap-face fb 'org-hide))
          fringe-bitmaps)

  (setq dotspacemacs-helm-use-fuzzy 'source)

  (defun visual-line-line-range () (save-excursion (cons (progn (vertical-motion 0) (point)) (progn (vertical-motion 1) (point)))))

  (setq hl-line-range-function 'visual-line-line-range)

  ;;(set-frame-parameter (selected-frame) 'alpha '(90 50))
  ;;(add-to-list 'default-frame-alist '(alpha 90 50))

  (setq powerline-default-separator 'curve)

  (setq company-selection-wrap-around t)

  (add-hook 'sage-shell-after-prompt-hook #'sage-shell-view-mode)

  (windmove-default-keybindings 'super)

  ;; (setq mouse-autoselect-window t)

  (setq helm-move-to-line-cycle-in-source t)

  (delete-selection-mode 1)

  ;; (defun pretty-lambdas-haskell ()
  ;;   (font-lock-add-keywords
  ;;    nil `((,(concat "\\(" (regexp-quote "\\") "\\)")
  ;;           (0 (progn (compose-region (match-beginning 1) (match-end 1)
  ;;                                     ?λ)
  ;;                     nil))))))

  (add-hook 'haskell-mode-hook
            (lambda ()
              (push
               '("\\" . ?λ)
               prettify-symbols-alist)
              ))
  (add-hook 'haskell-mode-hook 'haskell-indent-mode)

  (global-prettify-symbols-mode 1)

  ;; (setq prettify-symbols-unprettify-at-point 'right-edge)

  (add-hook 'prog-mode-hook
            (lambda ()
              (push
               '("-" . ?−)
               prettify-symbols-alist)
              (push
               '("*" . ?∗)
               prettify-symbols-alist)
              (push
               '("/" . ?÷)
               prettify-symbols-alist)
              (push
               '("->" . (?– (Br . Bc) ?–
                            (Br . Bc) ?>))
               prettify-symbols-alist)
              (push
               '("<-" . (?< (Br . Bc) ?–
                            (Br . Bc) ?–))
               prettify-symbols-alist)
              (push
               '("=>" . (?= (Br . Bc) ?= (Br . Bc) ?>))
               prettify-symbols-alist)
              (push
               '("<->" . (?< (Br . Bc) ?– (Br . Bc) ?–
                             (Br . Bc) ?– (Br . Bc) ?>))
               prettify-symbols-alist)
              (push
               '("/=" . (?≡ (Br . Bc) ?/ (Br . Bc) ?≡))
               prettify-symbols-alist)
              (push
               '("!=" . (?= (Br . Bc) ?/ (Br . Bc) ?=))
               prettify-symbols-alist)
              (push
               '("==" . (?≡ (Br . Bc) ?− (Br . Bc) ?≡))
               prettify-symbols-alist)
              (push
               '("<=" . ?≦)
               prettify-symbols-alist)
              (push
               '(">=" . ?≧)
               prettify-symbols-alist)
              (push
               '("::" . ?∷)
               prettify-symbols-alist)
              (push
               '("!!" . (?‼))
               prettify-symbols-alist)
              (push
               '("&&" . ?∧)
               prettify-symbols-alist)
              (push
               '("&&&" . (?& (Br . Bc) ?- (Br . Bc) ?&
                             (Br . Bc) ?- (Br . Bc) ?&))
               prettify-symbols-alist)
              (push
               '("||" . ?∨)
               prettify-symbols-alist)
              (push
               '("++" . (?+ (Br . Bc) ?- (Br . Bc) ?+))
               prettify-symbols-alist)
              (push
               '("+++" . (?+ (Br . Bc) ?- (Br . Bc) ?+
                             (Br . Bc) ?- (Br . Bc) ?+))
               prettify-symbols-alist)
              (push
               '("pi" . (?π))
               prettify-symbols-alist)
              (push
               '("~>" . (?∽ (Br . Bc) ?∽ (Br . Bc) ?>))
               prettify-symbols-alist)
              (push
               '("<-<" . (?< (Br . Bc) ?– (Br . Bc) ?<))
               prettify-symbols-alist)
              (push
               '(">>>" . (?> (Br . Bc) ?– (Br . Bc) ?>
                             (Br . Bc) ?– (Br . Bc) ?>))
               prettify-symbols-alist)
              (push
               '(">>" . (?> (Br . Bc) ?– (Br . Bc) ?>))
               prettify-symbols-alist)
              (push
               '(">=>" . (?> (Br . Bc) ?= (Br . Bc) ?=
                             (Br . Bc) ?= (Br . Bc) ?>))
               prettify-symbols-alist)
              (push
               '(">>=" . (?> (Br . Bc) ?– (Br . Bc) ?>
                             (Br . Bc) ?= (Br . Bc) ?=))
               prettify-symbols-alist)
              (push
               '("=<<" . (?= (Br . Bc) ?= (Br . Bc) ?<
                             (Br . Bc) ?– (Br . Bc) ?<))
               prettify-symbols-alist)
              (push
               '("|>" . (?\s (Br . Bc) ?▷ (Br . Bc) ?\s))
               prettify-symbols-alist)
              (push
               '("()" . (?\( (Br . Bc) ?· (Br . Bc) ?\)))
               prettify-symbols-alist)
              (push
               '("__" . (?_ (Br . Bc) ?_ (Br . Bc) ?_))
               prettify-symbols-alist)
              ))

  (add-hook 'text-mode-hook
            (lambda ()
              (push
               '("- " . (?— (Br . Bl) ?\s))
               prettify-symbols-alist)
              (push
               '(" – " . (?\s (Br . Bc) ?— (Br . Bc) ?\s))
               prettify-symbols-alist)
              (push
               '("--" . ?—)
               prettify-symbols-alist)
              (push
               '("..." . ?…)
               prettify-symbols-alist)
              ))

  ;; (add-hook 'haskell-mode-hook #'flycheck-haskell-setup)

  (set-fontset-font "fontset-default" '(#x2227 . #x2228)
                    (font-spec :name "IPAGothic"))
  (set-fontset-font "fontset-default" '(#x2264 . #x2265)
                    (font-spec :name "IPAGothic"))
  (set-fontset-font "fontset-default" '(#x3001 . #x9FD5)
                    (font-spec :name "IPAGothic"))

  (global-set-key (kbd "M-=") 'count-words)

  (shell-command "export cabal_helper_libexecdir=/usr/lib")

  (custom-set-variables '(haskell-process-type 'cabal-new-repl))

  (setq powerline-height 40)

  (global-set-key (kbd "C-S-m") (lambda () (interactive) (insert " %>% ")))

  ;; (define-key ess-r-mode-map "_" #'ess-insert-assign)
  ;; (define-key inferior-ess-r-mode-map "_" #'ess-insert-assign)

  (setq python-shell-interpreter "python3"
        python-shell-interpreter-args "-i")

  (remove-hook 'slime-repl-mode-hook #'slime/disable-smartparens)
  (add-hook 'slime-repl-mode-hook #'smartparens-strict-mode)
  (add-hook 'slime-repl-mode-hook #'rainbow-delimiters-mode)

  (add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))

  (define-generic-mode 'wenyan-mode
    '("批曰。" "注曰。" "疏曰。")
    '("吾?有[零一二三四五六七八九十百千萬億兆京垓秭穣溝澗正載極]+[數列言爻]"
      "名之曰")
    '(("加" . 'font-lock-builtin-face))
    '("\\.wy$")
    nil
    "A mode for the wenyan language")
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#181818" "#ab4642" "#a1b56c" "#f7ca88" "#7cafc2" "#ba8baf" "#7cafc2" "#d8d8d8"])
 '(ansi-term-color-vector
   [unspecified "#181818" "#ab4642" "#a1b56c" "#f7ca88" "#7cafc2" "#ba8baf" "#7cafc2" "#d8d8d8"] t)
 '(anzu-cons-mode-line-p nil)
 '(anzu-mode-line-update-function (quote spacemacs/anzu-update-mode-line))
 '(auto-compile-mode-line-counter t t)
 '(custom-safe-themes
   (quote
    ("93268bf5365f22c685550a3cbb8c687a1211e827edc76ce7be3c4bd764054bad" "16dd114a84d0aeccc5ad6fd64752a11ea2e841e3853234f19dc02a7b91f5d661" "78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" "5a7830712d709a4fc128a7998b7fa963f37e960fd2e8aa75c76f692b36e6cf3c" "d9dab332207600e49400d798ed05f38372ec32132b3f7d2ba697e59088021555" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(fringe-mode 24 nil (fringe))
 '(global-hl-line-mode t)
 '(global-page-break-lines-mode t)
 '(haskell-process-type (quote cabal-new-repl))
 '(hl-paren-colors (quote ("#a3be8c" "#fe99a1" "#de7d85" "#bf616a")) t)
 '(hl-paren-delay 0.2 t)
 '(package-selected-packages
   (quote
    (php-extras livid-mode json-mode js2-refactor company-tern web-beautify skewer-mode simple-httpd json-snatcher json-reformat multiple-cursors js2-mode js-doc tern coffee-mode slime-company slime common-lisp-snippets drupal-mode phpunit phpcbf php-auto-yasnippets php-mode darkroom writeroom-mode ess-smart-equals ess-R-data-view ess ctable julia-mode geiser sicp hy-mode company-anaconda yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode dash-functional helm-pydoc cython-mode anaconda-mode pythonic base16-theme nord-theme lv transient winum ghub org-mime spinner org-category-capture parent-mode pkg-info epl flx goto-chg undo-tree highlight diminish bind-map bind-key packed org-ref pdf-tools key-chord ivy tablist helm-bibtex parsebib biblio biblio-core web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode helm-css-scss haml-mode emmet-mode company-web web-completion-data csv-mode smeargle orgit magit-gitflow helm-gitignore gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link evil-magit magit magit-popup git-commit with-editor w3m unfill fuzzy sage-shell-mode deferred org log4e gntp intero hlint-refactor hindent helm-hoogle haskell-snippets gnugo xpm ascii-art-to-unicode pos-tip flycheck-haskell company-ghci company-ghc ghc haskell-mode company-cabal cmm-mode hide-comnt exwm xelb adaptive-wrap uuidgen request osx-dictionary org-projectile org-download mwim link-hint eyebrowse evil-visual-mark-mode evil-unimpaired evil-ediff dumb-jump f column-enforce-mode powerline hydra alert s markdown-mode projectile iedit avy auto-complete auctex yasnippet anzu smartparens flycheck dash company helm helm-core popup async package-build evil inform7-mode sws-mode olivetti centered-window-mode auctex-latexmk gnu-apl-mode ws-butler wordsmith-mode window-numbering which-key volatile-highlights visual-fill-column vi-tilde-fringe use-package typo toc-org spray spacemacs-theme spaceline smooth-scrolling reveal-in-osx-finder restart-emacs rainbow-delimiters quelpa popwin persp-mode pcre2el pbcopy paradox page-break-lines osx-trash org-repo-todo org-present org-pomodoro org-plus-contrib org-bullets open-junk-file neotree move-text mmm-mode material-theme markdown-toc macrostep lorem-ipsum linum-relative leuven-theme launchctl info+ indent-guide ido-vertical-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot gh-md fountain-mode flycheck-pos-tip flx-ido fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-args evil-anzu eval-sexp-fu elisp-slime-nav deft define-word company-statistics company-quickhelp company-auctex clean-aindent-mode buffer-move bracketed-paste auto-yasnippet auto-highlight-symbol auto-compile aggressive-indent ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(pdf-latex-command "xelatex")
 '(send-mail-function (quote mailclient-send-it))
 '(show-smartparens-global-mode t)
 '(spaceline-helm-mode t)
 '(spaceline-info-mode t)
 '(typo-language "English")
 '(vi-tilde-fringe-bitmap-array [0 0 0 339 657 426 0 0])
 '(visual-fill-column-center-text t)
 '(writeroom-bottom-divider-width 1)
 '(writeroom-extra-line-spacing nil)
 '(writeroom-global-effects nil)
 '(writeroom-header-line t)
 '(writeroom-mode-line t)
 '(writeroom-restore-window-config t)
 '(x-gtk-use-system-tooltips t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 89)) (:foreground "#D8DEE9" :background "#2E3440"))))
 '(cursor ((t (:background "#d8dee9"))))
 '(flycheck-error ((t (:underline "#bf616a"))))
 '(font-latex-bold-face ((((class color) (min-colors 89)) (:inherit bold))))
 '(font-latex-italic-face ((((class color) (min-colors 89)) (:slant italic))))
 '(fringe ((t (:background "#2e3440"))))
 '(org-ref-ref-face ((t (:inherit org-link))))
 '(show-paren-match ((t (:background "#5e81ac"))))
 '(show-paren-mismatch ((t (:background "#b48ead" :foreground "#2e3440"))))
 '(spaceline-flycheck-error ((t (:distant-foreground "#A20C41" :foreground "#FF665C"))))
 '(spaceline-flycheck-info ((t (:distant-foreground "#21889B" :foreground "#41c7b9"))))
 '(spaceline-flycheck-warning ((t (:distant-foreground "#968B26" :foreground "#DBB32D"))))
 '(spacemacs-emacs-face ((t (:background "#5e81ac" :foreground "#2e3440" :inherit (quote mode-line))))))
