; os x
(setq mac-function-modifier 'hyper)
(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

; app
(global-set-key (kbd "s-q") 'save-buffers-kill-terminal)

; buffers
(global-set-key (kbd "s-{") 'previous-buffer)
(global-set-key (kbd "s-}") 'next-buffer)
(global-set-key (kbd "s-k") '(lambda () (interactive) (kill-buffer (buffer-name))))
(global-set-key (kbd "s-u") 'revert-buffer)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "<f9>") 'kill-all-buffers)

; nav
(global-set-key (kbd "s-<up>") 'beginning-of-buffer)
(global-set-key (kbd "s-<down>") 'end-of-buffer)
(global-set-key (kbd "s-<left>") 'beginning-of-line)
(global-set-key (kbd "s-<right>") 'end-of-line)

(global-set-key (kbd "M-<left>") 'left-word)
(global-set-key (kbd "M-<right>") 'right-word)

(global-set-key (kbd "s-l") 'goto-line)

(global-set-key (kbd "H-<backspace>") 'delete-char)

(global-set-key (kbd "s-<backspace>") 'kill-whole-line)
(global-set-key (kbd "s-d") 'duplicate-line)

; commenting
(global-set-key (kbd "s-/") 'dgc-comment)

; copy/paste
(define-key global-map (kbd "s-v") 'yank)
(define-key global-map (kbd "s-x") 'kill-region)
(define-key global-map (kbd "s-c") 'kill-ring-save)

;magit
(define-key global-map (kbd "<f2>") 'magit-status)
(define-key global-map (kbd "<f3>") 'magit-pull)
(define-key global-map (kbd "<f4>") 'magit-push)

;; dired
(define-key global-map (kbd "<f8>") 'find-name-dired)

;; find and replace in directory tip:
;; M-x find-name-dired (you have it bound to F8): you will be prompted for a root directory and a filename pattern.
;; Press t to "toggle mark" for all files found.
;; Press Q for "Query-Replace in Files...": you will be prompted for query/substitution regexps.
;; Proceed as with query-replace-regexp: SPACE to replace and move to next match, n to skip a match, etc.

