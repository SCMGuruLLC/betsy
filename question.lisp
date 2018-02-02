;; question.lisp

;; This program is part of the Betsy project, in enables Betsy to ask
;; the human for a question

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

(defun question ()
  "Ask the human for a question"
  (princ *betsy*)
  (princ "Please ask me a question, ")
  (princ *human*)
  (princ ".")
  (terpri)
  (princ "[ ")
  (princ *human*)
  (princ " ] ")
  (setq *question* (read-line))
  (if (string-equal *question* "What is your name?")
      (progn
	(princ *betsy*)
	(princ "Betsy.")
	(terpri)))
  (another-question))
