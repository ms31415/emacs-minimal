;; User interface

;; Set default font
(set-default-font "Courier")

;; Disable tool- and menu- bars
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Highlight selection
(transient-mark-mode t)

;; Uncomment this to increase font size
(set-face-attribute 'default nil :height 125)

;; Calendar localization
;; http://www.emacswiki.org/emacs/CalendarLocalization
(add-hook 'calendar-load-hook
	  (lambda ()
	    (calendar-set-date-style 'european)))
	    
;; Set window size
(when window-system (set-frame-size (selected-frame) 120 50))

(require 'whitespace)
;; highlight long lines
;; http://www.emacswiki.org/emacs/HighlightLongLines
(setq whitespace-style '(lines))
(setq whitespace-line-column 80)
(global-whitespace-mode 1)
(setq whitespace-style '(tabs trailing lines tab-mark))
;; end highlight long lines

;; show column numbers
(setq column-number-mode t)