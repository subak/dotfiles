;; 
;; キーバインド
;; 
;; その他に割り当てられるキーを探す (75)
;; M-英大文字
;; C-c 英字
;; <f5> - <f9>
;; (Shift, Alt, Ctrl) + ファンクションキー
;; ________________________________________________________________________________

(global-set-key [(C h)] 'delete-backward-char) ;; [(C h)]でカーソルより前の一文字削除

;; windowの切り替え
(global-set-key [(C t)] 'other-window) ;; [(C t)] で次のウィンドウ、[(C S t)] で前のウィンドウ

;; (if window-system
;;     (global-set-key (kbd "C-S-t") (lambda () (interactive) (other-window -1)))
;;   ;; Terminal.app で C-S ガ使えないため keyremap4macbook で C-S-t -> M-n に割り当て
;;   (global-set-key "\M-n" (lambda () (interactive) (other-window -1))))

;; buffer の切り替え
;; http://nori-computer.blogspot.jp/2009/05/emacs-buffer-selection.html
;; (global-set-key [(M \[)] 'previous-buffer)
;; (global-set-key [(M \])] 'next-buffer)
(global-set-key [(M \[)] 'bs-cycle-previous)
(global-set-key [(M \])] 'bs-cycle-next)
(global-set-key [(C x) (C b)] 'bs-show)

;; M-g M-g を M-g 一回で goto-line
;; (global-set-key [(M g)] 'goto-line)

;; KeyRemap4MacBook 用の設定
(define-prefix-command 'keyremap4macbook-map)
(global-set-key [(C c) (f4)] 'keyremap4macbook-map) ;[(C c) (f4)] をプレフィックスキーとして使う
(define-key keyremap4macbook-map [(C a)] (lambda () (interactive) (other-window -1))) ;[(C S t)]


;;
;; ????
;; ________________________________________________________________________________

(setq inhibit-startup-message t)       ;スタートアップメッセージの禁止
(menu-bar-mode -1)                     ;メニューバーを非表示
(setq-default truncate-lines t)        ;行の折り返しをしない
(define-key global-map [(C x) (C b)] 'buffer-menu) ;バッファリストを同じウィンドウで
(setq Buffer-menu-sort-column 5)        ;Sort by buffer file name.
(load-theme 'manoj-dark t)

;; 画面端で次の画面に映るときのスクロール量
;; http://marigold.sakura.ne.jp/devel/emacs/scroll/index.html
;; (setq scroll-conservatively 0)
(setq scroll-step 1)

;; 1画面スクロールしたときに以前の画面を何行分残すかを設定する
;; http://marigold.sakura.ne.jp/devel/emacs/scroll/index.html
(setq next-screen-context-lines 2)

(global-auto-revert-mode 1)            ;ファイルの変更を反映
;; (add-hook 'ruby-mode-hook 'turn-on-auto-revert-mode)
;; (add-hook 'objc-mode-hook 'turn-on-auto-revert-mode)
;; (add-hook 'c-mode-hook 'turn-on-auto-revert-mode)

;; デフォルトのインデント
(setq-default indent-line-function 'tab-to-tab-stop)
(setq-default tab-width 2)
(setq-default tab-stop-list '(2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60
                                62 64 66 68 70 72 74 76 78 80 82 84 86 88 90 92 94 96 98 100 102 104 106 108 110 112 114 116 118 120))
(setq-default indent-tabs-mode nil)

;; 行番号表示
;; (linum-mode)
(global-linum-mode t)
(setq linum-format
      (lambda (line)
	(propertize (format
		     (let ((w (length (number-to-string
				       (count-lines (point-min) (point-max))))))
		       (concat "%" (number-to-string w) "d "))
		     line)
		    'face 'linum)))


;; 
;; 外部 lisp
;; ________________________________________________________________________________

;; サブディレクトリも含めてロードパスに追加
;; http://homepage3.nifty.com/oatu/emacs/misc.html#lp
(let ((default-directory "~/.emacs.d/lisp"))
  (setq load-path (cons default-directory load-path))
  (normal-top-level-add-subdirs-to-load-path))


(require 'auto-save-buffers-enhanced)   ;git://github.com/kentaro/auto-save-buffers-enhanced.git
(require 'color-theme)                  ;http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz
(require 'coffee-mode)                  ;git://github.com/defunkt/coffee-mode.git
(require 'php-mode)                     ;git://github.com/ejmr/php-mode.git
(require 'haml-mode)                    ;git://github.com/nex3/haml-mode.git
(require 'sass-mode)                    ;git://github.com/nex3/sass-mode.git
(require 'highlight-indentation)        ;git://github.com/antonj/Highlight-Indentation-for-Emacs.git
(require 'popup)                ;git://github.com/m2ym/popup-el.git
(require 'auto-complete-config)         ;git://github.com/m2ym/auto-complete.git
(require 'scala-mode)                   ;http://www.scala-lang.org/

;; オートセーブ
(auto-save-buffers-enhanced t)
(setq make-backup-files nil) ; *.~ とかのバックアップファイルを作らない
(setq auto-save-default nil) ; .#* とかのバックアップファイルを作らない


;; インデントのハイライト
(set-face-background 'highlight-indentation-current-column-face "#444444")
(setq highlight-indentation-offset 2)


;; オートコンプリート
;; http://cx4a.org/software/auto-complete/index.ja.html
;; http://cx4a.org/software/auto-complete/manual.ja.html
(add-to-list 'ac-dictionary-directories "~/.emacs.d/lisp/auto-complete/dict")
(ac-config-default)
(setq ac-auto-start nil)                ;自動ポップアップを無効
(ac-set-trigger-key "TAB")              ;タブキーでポップアップ
(setq ac-use-menu-map t)                ;C-n/C-pで補完候補を選択する
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

;; 
;; hook
;; --------------------------------------------------------------------------------

;; javascript-mode
(setq js-indent-level 2)

;; ruby-mode
(add-to-list 'auto-mode-alist '("/[Rr]akefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("/[Gg]emfile$" . ruby-mode))

;; coffee-mode
(add-hook 'cofee-mode-hook
	  (lambda ()
	    (setq whitespace-action '(auto-cleanup)) ;; automatically clean up bad whitespace
	    (setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab)) ;; only show bad whitespace
	    ))
(add-hook 'coffee-mode-hook 'turn-on-auto-revert-mode)
(add-hook 'coffee-mode-hook 'highlight-indentation-current-column-mode)
;; (add-hook 'coffee-mode-hook 'highlight-indentation-mode)

;; haml-mode
(add-hook 'haml-mode-hook 'highlight-indentation-current-column-mode)
(add-to-list 'auto-mode-alist '("\\.hamlc$" . haml-mode))

