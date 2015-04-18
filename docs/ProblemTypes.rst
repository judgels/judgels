Problem Types
*************

Blackbox Grading
================

In blackbox grading, user's solution is run with provided input testcase and evaluated based on the output of the solution. Blackbox grading don't evaluate the structure or style of the code. Blackbox grading also evaluate the solution performance by setting constraints such as time and memory limit.

Constraints
===========

User solution is run in a isolated environment with some constraints. Isolation of user solution is done by using sandbox. Currently, we are using `isolate <http://www.ucw.cz/moe/isolate.1.html>`_ as sandbox.

Memory Limit
------------

The constraint memory limit restricts total memory that can be used in the solution. This means the data structure that can be created is limited to the maximum memory allowed.

Time Limit
----------

The constraint time limit restricts the time user solution need to solve the problem. User's solution need to be fast enough to solve the problem within the time limit.

Evaluators
==========

Below are the terms that are used in Judgel's evaluators:

Testcases
---------

A testcase is a pair of given input and expected output based on the problem.

Subtasks
--------

A subtask is a collection of testcases that are grouped by certain constraint. Each subtask is assigned to certain score. To pass a subtask, user's solution need to pass all the testcases in the subtask.


Test Groups
-----------

Test groups is a feature in judgels to group testcases. Sometimes, writer need to create incremental subtask where subtask 2 can only be solved if subtask 1 is solved. In order to do this, the testcases in subtask 1 must be included in subtask 2. This can be replaced by using test groups where subtask 1 contains test group 1 and subtask 2 contains test group 1 and 2.

Checker
-------

In blackbox grading, sometimes there are problems with special conditions. Some of the special conditions are multiple correct answers and floating point precission. This can be solved by providing checker. A checker is a program that checks provided input, user solution's output with expected output and check if the solution is correct or not.

Documentation about making checker is described later in this document.

Problem Types
=============

There are three types of programming problem:

1. Batch
--------

   Batch problem type require the collection of testcases. In batch problem type, the problem can be solved partially by submitting a solution that pass certain testcases. 

   The score is calculated by using the number of passed testcases. In total, user can get 100 score. E.g., if there is a problem with total of 20 testcases and a user's solution passed 11 testcases then the user get a total score of 55.

2. Batch with Subtasks
----------------------

   Batch with Subtasks problem type is similar to the batch problem type.  

   In batch with subtasks problem type, the score is calculated based on the number of passed subtasks. The total of score that a user can get is the total of score assigned to each subtasks. E.g., if there is a problem with total of 3 subtasks with scores (20, 30, 50) and a user's solution passed subtask 1 and 2 then the user get a total score of 50.

3. Interactive with Subtasks
----------------------------

   Interactive with Subtasks problem type is a interactive problem with subtask scoring. The way subtask is used is the same with batch with subtasks.

   In interactive problem type, user need to submit a solution that interact with another program.

Creating Checker
================

1. Batch Problem
----------------
   Create a program using supported programming language which takes 3 arguments according to this order: inputFilename, keyOutputFilename, and contestantOutputFilename. Your program can open those files, read the content, and do the judging.

   To report the judging result, print one of the following option to stdout:

   1. A line containing "AC", indicating the output from contestant produces correct answer for the particular test case.
   2. A line containing "WA", indicating the output from contestant produces wrong answer for the particular test case.
   3. A line containing "OK", followed by a line containing a number X, indicating the output from contestant produces answer which scores X for the particular test case. This number can be a real value.

2. Interactive Problem
----------------------
   Simply create a program using supported programming language which takes 1 argument: inputFilename. Your program can open that files, read the content, and do the judging. Contestant's output will be your stdin, and your stdout will be contestant's stdin.

   Don't forget to flush your stdout after printing some output. This is required to ensure the output is delivered immediately to contestant's stdin. 

   To report the judging result, print one of the following option to stderr:

   1. A line containing "AC", indicating the output from contestant produces correct answer for the particular test case.
   2. A line containing "WA", indicating the output from contestant produces wrong answer for the particular test case.
   3. A line containing "OK", followed by a line containing a number X, indicating the output from contestant produces answer which scores X for the particular test case. This number can be a real value.