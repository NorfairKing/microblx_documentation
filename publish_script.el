; (require 'org-publish)
; (setq org-publish-project-alist
;       '(

;         ("org-notes"
;          :base-directory "~/ubx_doc/org/"
;          :base-extension "org"
;          :publishing-directory "~/ubx_doc/public_html/"
;          :recursive t
;          :publishing-function org-html-publish-to-html
;          :levels 4             ; Just the default for this project.
;          :auto-preamble t
;          )

;         ("org-static"
;          :base-directory "~/ubx_doc/org/"
;          :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
;          :publishing-directory "~/ubx_doc/public_html/"
;          :recursive t
;          :publishing-function org-publish-attachment
;          )

;         ("org" :components ("org-notes" "org-static"))       

;       ))


(require 'ox-publish)
(require 'ox-html)

(setq org-publish-use-timestamps-flag nil)

(setq org-publish-project-alist
  '(("org-html" 
 :base-directory "~/ubx_doc/org/"
 :base-extension "org"
 :publishing-directory "~/ubx_doc/public_html"
 :recursive t
 :publishing-function org-html-publish-to-html
 :levels 4             ; Just the default for this project.
 :auto-preamble t
 :table-of-contents: nil
 :auto-postamble nil)
("org-static"
 :base-directory "~/ubx_doc/org/"
 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
 :publishing-directory "~/ubx_doc/public_html"
 :recursive t
 :publishing-function org-publish-attachment)
   ("org" :components ("org-html" "org-static"))))


(org-publish-all)



