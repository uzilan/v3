(defpackage #:sexpr
  (:use :cl)
  (:export :is-an-atom-p :is-a-cons-p :first-thing :rest-of-it))
(in-package :sexpr)

(defun is-an-atom-p (thing)
  "Evaluates to T if THING is an atom, NIL otherwise"
  (atom thing))

(defun is-a-cons-p (thing)
  "Evaluates to T if THING is a cons, NIL otherwise"
  (consp thing))

(defun first-thing (cons)
  "Returns the first part of CONS"
  (car cons))

(defun rest-of-it (cons)
  "Returns the 'rest' of the CONS"
  (cdr cons))
