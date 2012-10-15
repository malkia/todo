(server-start)
(require 'package)

(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(android-mode-sdk-dir "e:/p/android-sdk-windows/")
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector (vector "#708183" "#c60007" "#728a05" "#a57705" "#2075c7" "#c61b6e" "#259185" "#042028"))
 '(background-color "#002b36")
 '(background-mode dark)
 '(cursor-color "#839496")
 '(custom-enabled-themes (quote (sanityinc-tomorrow-blue)))
 '(custom-safe-themes (quote ("82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "bf5b179a9e82b3e818b938a041363632a8b4f805" "d14db41612953d22506af16ef7a23c4d112150e5" "7fe1e3de3e04afc43f9a3d3a8d38cd0a0efd9d4c" "b0950b032aa3c8faab4864ae288296dd66b92eca" "1056c413dd792adddc4dec20e8c9cf1907e164ae" default)))
 '(foreground-color "#839496")
 '(inhibit-startup-screen t)
 '(lua-default-application "e:/p/ufo/luajit32.cmd")
 '(lua-indent-string-contents t)
 '(p4-default-depot-completion-prefix "//t6/")
 '(p4-default-port "bundy:1666")
 '(p4-use-cygpath nil)
 '(p4-user-email "dstanev@treyarch.com")
 '(python-python-command "e:/t6/iw-core/tools_bin/python26/python.exe")
 '(safe-local-variable-values (quote ((lua-default-application . "../luajit32.cmd") (eval when (eq (operating-system) (quote windows)) (custom-set-value (quote lua-default-application) "e:/p/luajit-winapi/luajit32.cmd")) (quote (lua-default-application "e:/p/luajit-winapi/luajit32.cmd")))))
 '(tabbar-mode t nil (tabbar))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "e:/p/lua-mode/")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))
(put 'downcase-region 'disabled nil)


(add-to-list 'load-path "e:/p/markdown-mode/")
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))


(defun my-c-mode-hook ()
(local-set-key "\ec" 'compile) )
(add-hook 'c-mode-hook 'my-c-mode-hook)


;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))


(setq package-archives
      '(("marmalade" . "http://marmalade-repo.org/packages/")
	("ELPA" . "http://tromey.com/elpa/")
	("gnu" . "http://elpa.gnu.org/packages/")))
