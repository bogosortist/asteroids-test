(in-package :asteroids.entities)
(defclass boundary-behavior () ())
(defgeneric boundary-check (entity x-limit y-limit))

(defclass reset-behavior () ())
(defmethod boundary-check ((entity reset-behavior) x-limit y-limit)
  (when (< (x entity) 0)
    (setf (x entity) x-limit))
  (when (> (x entity) x-limit)
    (setf (x entity) 0))
  (when (< (y entity) 0)
    (setf (y entity) y-limit))
  (when (> (y entity) y-limit)
    (setf (y entity) 0)))
