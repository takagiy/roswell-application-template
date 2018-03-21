(in-package :{{name}})
(defun main(argv)
  (format t "Hello ~a!~%" (or (first argv) "world")))
