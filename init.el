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
     (syntax-checking :variables
                      syntax-checking-enable-by-default nil
                      )
     )
   dotspacemacs-additional-packages
   '(
     cargo
     drag-stuff
     evil-smartparens
     )
   dotspacemacs-excluded-packages
   '(
     vi-tilde-fringe
     )
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
   dotspacemacs-startup-lists '(recents projects bookmarks)
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
   dotspacemacs-smartparens-strict-mode t
   dotspacemacs-highlight-delimiters 'any
   dotspacemacs-persistent-server t
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
   neo-theme 'ascii
   ranger-override-dired t
   require-final-newline t
   rust-enable-racer t
   sp-highlight-pair-overlay nil
   tab-width 4
   )

  ;; Start server
  (require 'server)
  (unless (server-running-p)
    (server-start))

  ;; Monokai Dark Soda theme
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
       (cblk . "#f8f8f8")
       (cblk-bg . "#1e1e1e")
       (cblk-ln . "#66d9ef")
       (cblk-ln-bg . "#1e1e1e")
       (comment . "#8c8c8c")
       (comment-bg . "#1e1e1e")
       (comp . "#66d9ef")
       (const . "#ff80f4")
       (cursor . "#f8f8f8")
       (cyan . "#66d9ef")
       (err . "#d62220")
       (func . "#a7e22e")
       (green . "#a7e22e")
       (green-bg . "#a7e22e")
       (green-bg-s . "#a7e22e")
       (head1 . "#66d9ef")
       (head1-bg . "#1e1e1e")
       (head2 . "#a7e22e")
       (head2-bg . "#1e1e1e")
       (head3 . "#f92671")
       (head3-bg . "#1e1e1e")
       (head4 . "#ff80f4")
       (head4-bg . "#1e1e1e")
       (highlight . "#4a4a4a")
       (keyword . "#f92671")
       (lnk . "#66d9ef")
       (lnum . "#8c8c8c")
       (mat . "#66d9ef")
       (meta . "#8c8c8c")
       (red . "#d62220")
       (red-bg . "#d62220")
       (red-bg-s . "#d62220")
       (str . "#ffee99")
       (suc . "#a7e22e")
       (ttip . "#8c8c8c")
       (ttip-bg . "#2a2a2a")
       (ttip-sl . "#4a4a4a")
       (type . "#66d9ef")
       (var . "#66d9ef")
       (violet . "#ff80f4")
       (war . "#ff9900")
       (yellow . "#ff9900")
       (yellow-bg . "#ff9900")
       )
     )
   )
  )

(defun dotspacemacs/user-config ()
  (setq
   eshell-prompt-function (lambda nil (concat "\n" (eshell/pwd) "\n> "))
   evil-emacs-state-cursor '("#66d9ef" box)
   evil-insert-state-cursor '("#a7e22e" box)
   evil-motion-state-cursor '("#ff80f4" box)
   evil-normal-state-cursor '("#ff9900" box)
   evil-visual-state-cursor '("#f8f8f8" box)
   neo-show-hidden-files nil
   neo-show-updir-line t
   neo-smart-open t
   powerline-default-separator 'arrow
   ranger-hide-cursor nil
   ranger-show-dotfiles nil
   scroll-margin 5
   server-use-tcp t
   )

  ;; Windows specific settings
  (if (spacemacs/system-is-mswindows)
      (setq
       default-directory "c:/Users/Francois"
       helm-dash-docset-newpath "d:/Documentation"
       racer-cmd "c:/Users/Francois/.cargo/bin/racer.exe"
       racer-rust-src-path "c:/Users/Francois/Rust/Rust-Lang/src"
       )
    )

  ;; Mac specific settings
  (if (spacemacs/system-is-mac)
      (setq
       default-directory "~"
       )
    )

  ;; Hooks and modes
  (add-hook 'evil-insert-state-entry-hook #'spacemacs/toggle-aggressive-indent-off)
  (add-hook 'evil-insert-state-exit-hook #'spacemacs/toggle-aggressive-indent-on)
  (add-hook 'evil-motion-state-entry-hook #'spacemacs/toggle-indent-guide-off)
  (add-hook 'evil-motion-state-exit-hook #'spacemacs/toggle-indent-guide-on)
  (add-hook 'racer-mode-hook #'company-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode)
  (add-hook 'rust-mode-hook #'racer-mode)
  (add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)
  (blink-cursor-mode 'visible-cursor)
  (drag-stuff-global-mode 1)
  (global-aggressive-indent-mode)
  (global-company-mode)
  (indent-guide-global-mode)
  (set-face-bold 'bold nil)
  (set-face-italic 'italic nil)
  (spaceline-compile)

  ;; Customise Spacemacs major mode colours
  (custom-set-faces
   '(spaceline-evil-emacs ((t (:background "#66d9ef" :foreground "#1e1e1e" :inherit (quote mode-line)))))
   '(spaceline-evil-insert ((t (:background "#a7e22e" :foreground "#1e1e1e" :inherit (quote mode-line)))))
   '(spaceline-evil-motion ((t (:background "#ff80f4" :foreground "#1e1e1e" :inherit (quote mode-line)))))
   '(spaceline-evil-normal ((t (:background "#ff9900" :foreground "#1e1e1e" :inherit (quote mode-line)))))
   '(spaceline-evil-visual ((t (:background "#f8f8f8" :foreground "#1e1e1e" :inherit (quote mode-line)))))
   '(spacemacs-emacs-face ((t (:background "#66d9ef" :foreground "#1e1e1e" :inherit (quote mode-line)))))
   '(spacemacs-insert-face ((t (:background "#a7e22e" :foreground "#1e1e1e" :inherit (quote mode-line)))))
   '(spacemacs-motion-face ((t (:background "#ff80f4" :foreground "#1e1e1e" :inherit (quote mode-line)))))
   '(spacemacs-normal-face ((t (:background "#ff9900" :foreground "#1e1e1e" :inherit (quote mode-line)))))
   '(spacemacs-visual-face ((t (:background "#f8f8f8" :foreground "#1e1e1e" :inherit (quote mode-line)))))
   )

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
