(defsystem :{{name}}
  :description "A roswell application."
  :author "{{author}}"
  :license "{{license | default:MIT}}"
  :version "0.0.1"
  :depends-on ()
  :serial t
  :components ((:module "lib" 
                :components ((:file "package")
                             (:file "main")))))

#|-*- mode:lisp -*-|#
#| vim:set ft=lisp:|#
