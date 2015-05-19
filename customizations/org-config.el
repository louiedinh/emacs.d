(require 'org)

(setq org-default-notes-file (concat org-directory "inbox.org"))

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-tag-alist '((:startgroup . nil)
		      ("study" . ?s) 
		      ("project" . ?p)
		      ("writing" . ?w)
		      ("social" . ?o)
		      ("errand" . ?e)
		      ("reading" . ?r)
		      ("listening" . ?l)
		      ("watching" . ?a)
		      (:endgroup . nil)
		      ("weekly_goals" . ?g)
		      ("away" . ?y)))

(setq org-tags-exclude-from-inheritance '("study" "project" "writing" "social" "errand" "reading" "listening" "watching"))

;; Custom Agenda
(setq org-agenda-custom-commands
'(("l" "My Life in a Buffer"
   ((agenda "")
    (tags-todo "weekly_goals")
    (tags-todo "study")
    (tags-todo "project")
    (tags-todo "writing")
    (tags-todo "social")
    (tags-todo "errand")
    (tags-todo "reading")
    (tags-todo "listening")
    (tags-todo "watching")))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/Dropbox/Org/goals.org" "~/Dropbox/Org/projects.org" "~/Dropbox/Org/humanity.org" "~/Dropbox/Org/todos.org" "~/Dropbox/Org/review.org")))
 '(org-capture-templates (quote (("i" "Insert into inbox" entry (file+headline "~/Dropbox/Org/inbox.org" "To File") "** TODO%i" :immediate-finish t)))))

