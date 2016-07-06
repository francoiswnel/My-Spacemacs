(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     emacs-lisp
     asm
     c-c++
     rust
     python
     html
     markdown
     extra-langs
     git
     github
     ranger
     org
     better-defaults
     evil-commentary
     theming
     themes-megapack
     (syntax-checking :variables
                      syntax-checking-enable-by-default nil
                      )
     (auto-completion :variables
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior 'complete
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-sort-by-usage t
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
   dotspacemacs-smooth-scrolling nil
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
   frame-title-format "Emacs"
   require-final-newline t
   blink-cursor-blinks 0
   evil-shift-round nil
   evil-move-cursor-back nil
   rust-enable-racer t
   ranger-override-dired t
   sp-highlight-pair-overlay nil
   tab-width 4
   c-basic-offset 4
   neo-theme 'ascii
   neo-smart-open t
   neo-show-updir-line t
   neo-show-hidden-files nil
   )

  ;; Monokai Dark Soda colour scheme
  (custom-set-variables
   '(
     spacemacs-theme-custom-colors
     '(
       (aqua . "#66d9ef")
       (aqua-bg . "#66d9ef")
       (green . "#a7e22e")
       (green-bg . "#a7e22e")
       (green-bg-s . "#a7e22e")
       (cyan . "#66d9ef")
       (red . "#d62220")
       (red-bg . "#d62220")
       (red-bg-s . "#d62220")
       (blue . "#66d9ef")
       (blue-bg . "#66d9ef")
       (violet . "#ff80f4")
       (yellow . "#fe9720")
       (yellow-bg . "#fe9720")
       (const . "#ff80f4")
       (keyword . "#f92671")
       (type . "#66d9ef")
       (func . "#a7e22e")
       (var . "#66d9ef")
       (highlight . "#4a4a4a")
       (mat . "#a7e22e")
       (bg1 . "#1e1e1e")
       (bg2 . "#1e1e1e")
       (bg3 . "#1a1a1a")
       (bg4 . "#111111")
       (base . "#f8f8f8")
       (base-dim . "#d8d8d8")
       (comment . "#8c8c8c")
       (comment-bg . "#1e1e1e")
       (str . "#ffee99")
       (act1 . "#1e1e1e")
       (act2 . "#4a4a4a")
       (border . "#4a4a4a")
       (lnum . "#8c8c8c")
       (ttip . "#8c8c8c")
       (ttip-sl . "#4a4a4a")
       (ttip-bg . "#2a2a2a")
       (comp . "#66d9ef")
       (err . "#d62220")
       (suc . "#a7e220")
       (war . "#ff0000")
       )
     )
   )
  )

(defun dotspacemacs/user-config ()
  (setq
   default-directory "C:/Users/Francois"
   racer-cmd "C:/Users/Francois/.cargo/bin/racer.exe"
   racer-rust-src-path "C:/Users/Francois/Rust/Rust-Lang/src"
   eshell-prompt-function (lambda nil (concat "\n" (eshell/pwd) "\n> "))
   powerline-default-separator 'arrow
   )
  (spaceline-compile)
  (add-hook 'rust-mode-hook #'racer-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode)
  (add-hook 'racer-mode-hook #'company-mode)
  (blink-cursor-mode 'visible-cursor)
  (global-vi-tilde-fringe-mode -1)
  (set-face-italic 'italic nil)
  (set-face-bold 'bold nil)
  (drag-stuff-global-mode 1)
  (global-company-mode)
  (indent-guide-global-mode)

  ;; Set up workspace
  (delete-other-windows)
  (switch-to-buffer (get-buffer-create "New"))
  (text-mode)
  (split-window-right)
  (balance-windows)
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
