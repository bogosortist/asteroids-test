(in-package :asteroids.entities)

(defclass Box ()
  ((x :initarg :x
      :accessor x)
   (y :initarg :y
      :accessor y)
   (width :initarg :width
          :accessor width)
   (height :initarg :height
           :accessor height)))

(defgeneric top (Box)
  (:documentation "Returns a y coordinate point representing the top of the box"))
(defgeneric bottom (Box)
  (:documentation "Returns a y coordinate point representing the bottom of the box"))
(defgeneric left (Box)
  (:documentation "Returns an x coordinate point representing the left side of the box"))
(defgeneric right (Box)
  (:documentation "Returns an x coordinate point representing the right side of the box"))
(defgeneric center-x (Box)
  (:documentation "Returns an x coordinate point representing the center of the box"))
(defgeneric center-y (Box)
  (:documentation "Returns an Y coordinate point representing the center of the box"))

(defmethod top (Box)
  (y Box))
(defmethod bottom (Box)
  (+ (y Box) (height Box)))
(defmethod left (Box)
  (x Box))
(defmethod right (Box)
  (+ (x Box) (width Box)))
(defmethod center-x (Box)
  (+ (x Box) (/ (width Box) 2.0)))
(defmethod center-y (Box)
  (+ (y Box) (/ (height Box) 2.0)))
