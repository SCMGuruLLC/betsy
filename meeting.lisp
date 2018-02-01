;; meeting.lisp

;; This program is part of the Betsy project, it asks the human for
;; their name

;; Copyright (C) 2015, 2016, 2018  Scott C. MacCallum
;; scm@linux.com

;; This program is free software: you can redistribute it and/or
;; modify it under the terms of the GNU Affero License as published
;; by the Free Software Foundation, either version 3 of the License,
;; or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see http://www.gnu.org/licenses/.

(defun meeting ()
  "Asks the *human* for their name"
  (setq *betsy* "[ Betsyro ] ")
  (princ *betsy*)
  (princ "What is your name?")
  (terpri)
  (setq *human* "[ Unknown ] ")
  (princ *human*)
  (setq *human* (read-line))
  (princ *betsy*)
  (princ "Your name is, ")
  (princ *human*)
  (princ "?")
  (terpri)
  (princ "[ ")
  (princ *human*)
  (princ "? ] ")
  (setq *answer* (read-line))
  (if (string-equal *answer* "no")
      (meeting))
  (if (string-not-equal *answer* "yes")
      (progn
	(princ *betsy*)
	(princ "Please answer me with a yes or no.")
	(terpri)
	(meeting))))
