(in-package :asdf-user)
(defsystem "asteroids"
  :depends-on (:sdl2)
  :components ((:file "helpers")
               (:file "entities-package" :depends-on ("helpers"))
               (:file "box" :depends-on ("entities-package"))
               (:file "vector" :depends-on ("entities-package" "helpers"))
               (:file "sprite" :depends-on ("entities-package" "box"))
               (:file "entity" :depends-on ("entities-package" "sprite"))
               (:file "ship" :depends-on ("entities-package" "sprite" "box" "vector" "entity"))
               (:file "main" :depends-on ("box" "sprite" "ship"))))
