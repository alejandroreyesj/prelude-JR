(set-face-attribute 'default nil :font "JetBrainsMono Nerd Font-14") ; Default Font

(set-fringe-mode 1)   ; Give some room around the edges
(menu-bar-mode -1)     ; Disable Menu Bar
(tool-bar-mode -1)     ; Disable Tool Bar
(scroll-bar-mode -1)   ; Disable Scroll Bar

;; Column Numbers
(column-number-mode)

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

(dolist (mode '(org-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda() (display-line-numbers-mode 0))))
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)


(setq visible-bell t)  ; Turn on visible bell
(setq treesit-language-source-alist
      '((bash "https://github.com/tree-sitter/tree-sitter-bash")
        (c "https://github.com/tree-sitter/tree-sitter-c")
        (cpp "https://github.com/tree-sitter/tree-sitter-cpp")
        (cmake "https://github.com/uyha/tree-sitter-cmake")
        (css "https://github.com/tree-sitter/tree-sitter-css")
        (elisp "https://github.com/Wilfred/tree-sitter-elisp")
        (go "https://github.com/tree-sitter/tree-sitter-go")
        (html "https://github.com/tree-sitter/tree-sitter-html")
        (javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src")
        (json "https://github.com/tree-sitter/tree-sitter-json")
        (make "https://github.com/alemuller/tree-sitter-make")
        (markdown "https://github.com/ikatyang/tree-sitter-markdown")
        (python "https://github.com/tree-sitter/tree-sitter-python")
        (toml "https://github.com/tree-sitter/tree-sitter-toml")
        (tsx "https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src")
        (typescript "https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src")
        (yaml "https://github.com/ikatyang/tree-sitter-yaml")
        (rust "https://github.com/tree-sitter/tree-sitter-rust")
        (toml "https://github.com/ikatyang/tree-sitter-toml")))

(setq prelude-flyspell nil)
