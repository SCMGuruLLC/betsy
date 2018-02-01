;; another-question.lisp

;; This program is part of the Betsy project, it asks the human if they
;; have another question

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

(defun another-question ()
  "Asks the human if they have another question"
  (princ *betsy*)
  (princ "Would you like to ask me another question, ")
  (princ *human*)
  (princ "?")
  (terpri)
  (princ "[ ")
  (princ *human*)
  (princ " ] ")
  (setq *answer* (read-line))
  (if (string-equal *answer* "no")
      (progn
	(princ *betsy*)
	(princ "It was nice talking with you, ")
	(princ *human*)
	(princ ".")
	(terpri)
	(main)))
  (if (string-not-equal *answer* "yes")
      (progn
	(princ *betsy*)
	(princ "Please answer me with a yes or no.")
	(terpri)
	(another-question)))
  (help))
