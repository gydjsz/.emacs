(require 'package)
(package-initialize)
(add-to-list'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(display-time-mode t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("popkit" . "http://elpa.popkit.org/packages/"))))
 '(package-selected-packages
   (quote
    (sr-speedbar electric-spacing spacemacs-theme solarized-theme flymake-cppcheck flycheck-title flycheck-objc-clang flycheck-irony flycheck-color-mode-line flycheck auto-complete-c-headers auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(global-auto-complete-mode t)
;;global-set-key (kbd "ESC M-h") ';;可以使用“ESC+ESC+h”唤醒自动补全

;(global-linum-mode 1) ; always show line numbers                              
;(setq linum-format "%d)")  ;set format
(global-linum-mode t)

(global-flycheck-mode t)



;;启用时间显示设置，在minibuffer上面的那个杠上
(display-time-mode 1)
;;时间使用24小时制
(setq display-time-24hr-format t)
;;时间显示包括日期和具体时间
(setq display-time t)



;; C语言模式
(add-hook 'c-mode-hook
'(lambda ()

;;把c语言风格设置为k&r风格
(c-set-style "k&r")

;; 此模式下，当按Backspace时会删除最多的空格
(c-toggle-hungry-state)

;; TAB键的宽度设置为4
(setq c-basic-offset 4)

;; 在菜单中加入当前Buffer的函数索引
(imenu-add-menubar-index)

;; 在状态条上显示当前光标在哪个函数体内部
(which-function-mode)))

;; C++语言模式
(add-hook 'c++-mode-hook
'(lambda()

;;把C++语言风格设置为stroustrup风格
(c-set-style "stroustrup")
(c-toggle-auto-state)
(c-toggle-hungry-state)
(setq c-basic-offset 4)
(imenu-add-menubar-index)
(which-function-mode)))


;; JAVA语言模式
(add-hook 'java-mode-hook
'(lambda()

(c-set-style "java")

(c-toggle-auto-state)

(c-toggle-hungry-state)

(setq c-basic-offset 4)

(imenu-add-menubar-index)

(which-function-mode)))


;;能把一个代码块缩起来，需要的时候再展开
;; M-x hs-minor-mode
;; C-c @ ESC C-s show all
;; C-c @ ESC C-h hide all
;; C-c @ C-s show block
;; C-c @ C-h hide block
;; C-c @ C-c toggle hide/show
(load-library "hideshow")
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'perl-mode-hook 'hs-minor-mode)
(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'electric-spacing-mode-hook 'electric-spacing-mode)

;;Gdb-UI配置
;(setq gdb-many-windows t)
;(load-library "multi-gud.el")
;(load-library "multi-gdb.ui.el")


(global-set-key (kbd ",")   ;逗号后面自动添加空格
                #'(lambda ()
                    (interactive)
                    (insert ", ")))



(load-theme 'spacemacs-dark t)


(global-hl-line-mode 1)
