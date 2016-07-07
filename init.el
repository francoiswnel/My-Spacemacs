(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     asm
     better-defaults
     c-c++
     dash
     emacs-lisp
     evil-commentary
     extra-langs
     git
     github
     html
     markdown
     python
     ranger
     ruby
     ruby-on-rails
     rust
     themes-megapack
     theming
     (syntax-checking :variables
                      syntax-checking-enable-by-default nil
                      )
     (spell-checking :variables
                     spell-checking-enable-auto-dictionary t
                     spell-checking-enable-by-default nil
                     )
     (auto-completion :variables
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-sort-by-usage t
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior 'complete
                      )
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom
            )
     )
   dotspacemacs-additional-packages
   '(
     cargo
     drag-stuff
     )
   dotspacemacs-excluded-packages '()
   dotspacemacs-delete-orphan-packages t)
  )

(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 5
   dotspacemacs-check-for-update t
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner 'official
   dotspacemacs-startup-lists '(recents bookmarks projects agenda todos)
   dotspacemacs-startup-recent-list-size 5
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-themes '(spacemacs-dark)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font
   '(
     "PragmataPro:antialias=none"
     :size 13
     :weight normal
     :width normal
     :powerline-scale 1.5
     )
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-command-key ":"
   dotspacemacs-remap-Y-to-y$ t
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-auto-save-file-location nil
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-use-ido nil
   dotspacemacs-helm-resize nil
   dotspacemacs-helm-no-header nil
   dotspacemacs-helm-position 'bottom
   dotspacemacs-enable-paste-micro-state nil
   dotspacemacs-which-key-delay 0.4
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar nil
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup t
   dotspacemacs-active-transparency 100
   dotspacemacs-inactive-transparency 100
   dotspacemacs-mode-line-unicode-symbols nil
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers t
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-highlight-delimiters 'any
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup nil
   )
  )

(defun dotspacemacs/user-init ()
  (setq-default
   blink-cursor-blinks 0
   c-basic-offset 4
   evil-move-cursor-back nil
   evil-shift-round nil
   frame-title-format "Emacs"
   neo-show-hidden-files nil
   neo-smart-open t
   neo-theme 'ascii
   ranger-override-dired t
   require-final-newline t
   rust-enable-racer t
   sp-highlight-pair-overlay nil
   tab-width 4
   )

  (require 'server)
  (unless (server-running-p)
    (server-start))

  ;; Monokai Dark Soda colour scheme
  (custom-set-variables
   '(
     spacemacs-theme-custom-colors
     '(
       (act1 . "#1e1e1e")
       (act2 . "#4a4a4a")
       (aqua . "#66d9ef")
       (aqua-bg . "#66d9ef")
       (base . "#f8f8f8")
       (base-dim . "#d8d8d8")
       (bg1 . "#1e1e1e")
       (bg2 . "#1e1e1e")
       (bg3 . "#1a1a1a")
       (bg4 . "#111111")
       (blue . "#66d9ef")
       (blue-bg . "#66d9ef")
       (border . "#4a4a4a")
       (comment . "#8c8c8c")
       (comment-bg . "#1e1e1e")
       (comp . "#66d9ef")
       (const . "#ff80f4")
       (cyan . "#66d9ef")
       (err . "#d62220")
       (func . "#a7e22e")
       (green . "#a7e22e")
       (green-bg . "#a7e22e")
       (green-bg-s . "#a7e22e")
       (highlight . "#4a4a4a")
       (keyword . "#f92671")
       (lnum . "#8c8c8c")
       (mat . "#a7e22e")
       (red . "#d62220")
       (red-bg . "#d62220")
       (red-bg-s . "#d62220")
       (str . "#ffee99")
       (suc . "#a7e220")
       (ttip . "#8c8c8c")
       (ttip-bg . "#2a2a2a")
       (ttip-sl . "#4a4a4a")
       (type . "#66d9ef")
       (var . "#66d9ef")
       (violet . "#ff80f4")
       (war . "#ff0000")
       (yellow . "#fe9720")
       (yellow-bg . "#fe9720")
       )
     )
   )
  )

(defun dotspacemacs/user-config ()
  (setq
   default-directory "C:/Users/Francois"
   eshell-prompt-function (lambda nil (concat "\n" (eshell/pwd) "\n> "))
   helm-dash-docset-newpath "D:/Documentation"
   neo-show-updir-line t
   powerline-default-separator 'arrow
   racer-cmd "C:/Users/Francois/.cargo/bin/racer.exe"
   racer-rust-src-path "C:/Users/Francois/Rust/Rust-Lang/src"
   server-use-tcp t
   )
  (add-hook 'racer-mode-hook #'company-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode)
  (add-hook 'rust-mode-hook #'racer-mode)
  (blink-cursor-mode 'visible-cursor)
  (drag-stuff-global-mode 1)
  (global-company-mode)
  (global-vi-tilde-fringe-mode -1)
  (indent-guide-global-mode)
  (set-face-bold 'bold nil)
  (set-face-italic 'italic nil)
  (spaceline-compile)

  ;; Set up workspace
  (switch-to-buffer (get-buffer-create "New"))
  (text-mode)
  (split-window-right)
  (balance-windows)

  ;; After loading
  (with-eval-after-load 'zeal-at-point (add-to-list 'zeal-at-point-mode-alist '(rust-mode . "rust")))
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
