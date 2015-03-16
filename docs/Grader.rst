Grader (Gabriel)
****************

Configuration
=============

Install `SBT <http://www.scala-sbt.org/>`_ on your Operating System.

First copy default configuration in "src/main/resources/conf" directory:
- application_default.conf -> application.conf

Gabriel need to connect to Sealtiel to fetch grading requests. You need to configure the parameter in "src/main/resources/conf/application.conf" file.

Gabriel need to connect to Sandalphon to fetch problem evaluator files (testcases, subtask configuration, constraints, checkers, etc). You need to configure the parameter in "src/main/resources/conf/application.conf" file.

Gabriel depends on judgels-gabriel-commons to run, make sure judgels-gabriel-commons is on the same level of directory with Gabriel.

Running Gabriel
===============

You can run Gabriel by using "sbt" command to enter sbt console and enter "run" command in the console. 

Grading Engine
==============

Gabriel can grade types of submissions based on existing grading engines. Currently there are three grading engines as described on Problem Types:

- Batch

- Batch with Subtasks

- Interactive with Subtasks


Future Target
=============

Currently Gabriel's grading engine are coded along with Gabriel. In the future, Gabriel's grading engine are supposed to be separated as add-on that can be fetch by Gabriel.

