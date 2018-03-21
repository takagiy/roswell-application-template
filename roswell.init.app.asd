(DEFPACKAGE :ROSWELL.INIT.APP
  (:USE :CL))
(IN-PACKAGE :ROSWELL.INIT.APP)
(DEFVAR *PARAMS*
  '(:FILES
    ((:NAME "app/README.md" :METHOD "djula" :REWRITE "{{name}}/README.md")
     (:NAME "app/roswell/app.ros" :METHOD "djula" :REWRITE
      "{{name}}/roswell/{{name}}.ros")
     (:NAME "app/lib/main.lisp" :METHOD "djula" :REWRITE
      "{{name}}/lib/main.lisp")
     (:NAME "app/lib/package.lisp" :METHOD "djula" :REWRITE
      "{{name}}/lib/package.lisp")
     (:NAME "app/app.asd" :METHOD "djula" :REWRITE "{{name}}/{{name}}.asd"))))
(DEFUN APP (_ &REST R)
  (ASDF/OPERATE:LOAD-SYSTEM :ROSWELL.UTIL.TEMPLATE :VERBOSE NIL)
  (FUNCALL (READ-FROM-STRING "roswell.util.template:template-apply") _ R
           *PARAMS*))
