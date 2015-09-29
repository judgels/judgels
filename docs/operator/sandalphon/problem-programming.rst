Managing programming problems
=============================

A programming problem here is a typical **blackbox** competitive programming problem. Blackbox means that contestant submissions are graded based on the outputs on the provided **test cases**. The submission source code is not checked.

Currently, the allowed programming languages are Pascal, C, C++, and Python 3 only.

The specific configuration for programming problems can be found in **Grading** tab.

Test data concepts
------------------

Test cases
**********

A test case is the smallest unit of grading data. It consists of several files. Test cases that appear in the problem statement are called sample test cases.

When the contestant program is evaluated against a test case, the **verdict** can be one of the following, from the lowest **priority** to the highest **priority**:

- **AC** (Accepted): the contestant program is considered correct.
- **OK X** (OK): the contestant program is partially correct, with X points.
- **WA** (Wrong Answer): the contestant program is considered incorrect.
- **RTE** (Runtime Error): the contestant program crashed; may be because it exceeded the memory limit.
- **TLE** (Time Limit Exceeded): the contestant program did not stop within the time limit.
- **SKP** (Skipped): the contestant program was not run at all. This will be explained in problems with subtasks.

Time limit
**********

The maximum time (not wall time) a contestant program can run on a test case.

Memory limit
************

The maximum memory a contestant program can consume. Stack size is only limited by this memory limit.

Source code limit
*****************

Currently it is hardcoded to **300 KB**.

Programming problem types
-------------------------

Blackbox problems are classified based on two aspects: **evaluation methods** and **scoring methods**. Based on evaluation methods, there are two types: **batch** and **interactive**. Based on scoring methods, there are two types: **with subtasks** and **without subtasks**.

Batch problems
**************

This is the standard and most common programming problem type. For each test case, the contestant program reads the input file and produced an output file. (In the program perspective, it reads from standard input and writes to standard output.) By default, the test case verdict is AC if the produced output file match exactly with the inteded output file, or WA otherwise.

It is also possible that in some problems, multiple answers are considered correct, or even partially correct. In order to support that, it is possible to write a custom **scorer** that decided the test case verdict. See the **Helper files** section for more details.

Interactive problems
********************

For each test case, the contestant program interacts with the so-called **communicator** program. There is only test case input file. The communicator program also decides the test case verdict, based on the interaction result. See the **Helper files** section for more details on writing communicator program.

Problems without subtasks
*************************

The score of a submission to this problem is simply the sum of test case scores.

The score of a test case is defined based on the test case verdict:

- If the verdict is **AC**, then the test case score is **100.0 / (number of test cases)**.
- If the verdict is **OK X**, then the test case score is **X**.
- If the verdict is anything else, then the test case score is **0**.

The verdict of a submission is the verdict with the highest priority among the test case verdicts.

Problems with subtasks
**********************

This type of problem introduces new concepts: **subtasks** and **test groups**.

Subtasks
    A subtask is a set of constraints. A problem can have multiple subtasks (multiple set of constraints), to give nicer score distribution. For example, a problem can have 3 subtasks with these sets of constraints:

    #. N = 1, 1 <= K <= 100
    #. 1 <= N <= 100, K = 1
    #. 1 <= N <= 100, 1 <= K <= 100

    A test case should be assigned to a subtask if the test case satisfy all constraints in the subtask.

Test groups
    A test group is a set of test cases that are assigned to the same set of subtasks. Test groups are introduced to simplify the organization of assignment of test cases and subtasks. For example, for the above problem, we can create 4 test groups as follows:

    #. Consists of only one test case N = K = 1. Assign it to subtasks {1, 2, 3}.
    #. Test cases that satisfy N = 1; 2 <= K <= 100. Assign them to subtasks {1, 3}.
    #. Test cases that satisfy 2 <= N <= 100; K = 1. Assign them to subtasks {2, 3}.
    #. Test cases that satisfy 2 <= N, K <= 100. Assign them to subtasks {3}.

The score of a submission is the sum of the score of each subtask.

The score of a subtask is:

- the points assigned to the subtask, if each test case assigned to the subtask has **AC** verdict, or
- **0**, if at least one test case assigned to the subtask does not have **AC** verdict.

The verdict of a subtask is the verdict with the highest priority among the test case verdicts.

The verdict of a submission is the verdict with the highest priority among the subtask verdicts.

If a test case will not affect the verdicts of all subtasks assigned to it anymore, the test case will be skipped (has Skipped verdict). For example, if a test case is assigned to Subtask 1, but there has been a test case in Subtask 1 that is not Accepted, then that test case will be skipped.

Grading engines
---------------

Based on the classifications above, there are 4 types of programming problems supported in Sandalphon. The type is referred to as **grading engine**.

- Batch
- Batch with subtasks
- Interactive
- Interactive with subtasks

Helper files
------------

These files should be uploaded to the Helpers section in grading configuration. You must upload the **source code**, not the executable program. The helper files mostly decide test case verdicts.

The test case verdict takes one of the following format:

- Accepted

  .. sourcecode:: bash

      AC
      <info>

- OK

  .. sourcecode:: bash

      OK
      X <info>

  where **X** is the score. Can be a floating-point value.

- Wrong Answer

  .. sourcecode:: bash

      WA
      <info>

In all cases, **<info>** is an additional info which will be given to the contestants in the submission result details. For example, in a binary search interactive problem, the additional info may be the number of guesses the contestant program gave. If you don't want to give additional info, just omit it. In AC and WA verdicts, just omit the second line altogether.

Scorer
******

A scorer is a C++ program which decides the verdict of a test case in batch problems.

The scorer will receive the following arguments:

- argv[1]: test case input filename
- argv[2]: test case output filename
- argv[3]: contestant's produced output filename

The scorer must print the test case verdict to the **standard output (stdout)**.

Here is an example scorer program which gives AC if the contestant's output differs not more than 1e-9 with the official output.

.. sourcecode:: c++

    #include <fstream>
    #include <iostream>
    #include <algorithm>
    using namespace std;

    int wa() {
        cout << "WA" << endl;
        return 0;
    }

    int ac() {
        cout << "AC" << endl;
        return 0;
    }

    int main(int argc, char* argv[]) {
        ifstream tc_in(argv[1]);
        ifstream tc_out(argv[2]);
        ifstream con_out(argv[3]);

        double tc_ans;
        tc_out >> tc_ans;

        double con_ans;
        if (!(con_out >> con_ans)) {
            return wa();
        }

        if (abs(tc_ans - con_ans) < 1e-9) {
            return ac();
        } else {
            return wa();
        }
    }

Communicator
************

A communicator is a C++ program which interacts with the contestant program in interactive problems, and then decides the verdict of a test case.

The communicator will receive the following argument:

- argv[1]: test case input filename

During the interaction, the communicator can read the contestant program's output from the **standard input (stdin)**, and can give input to the contestant program by writing to the **standard output (stdout)**. Make sure the communicator flushes after every time it writes output.

Ultimately, the communicator must print the test case verdict to the **standard error (stderr)**. Note that (currently) the interaction is not guaranteed to stop after the verdict has been output, the interaction may exceed the time limit if neither it or contestant program stops.

Here is an example communicator program in a typical binary search problem. In this example, the organizer wants that the number of guesses be output in an AC verdict.

.. sourcecode:: c++

    #include <fstream>
    #include <iostream>
    using namespace std;

    int wa() {
        cerr << "WA" << endl;
        return 0;
    }

    int ac(int count) {
        cerr << "AC" << endl;
        cerr << "guesses = " << count << endl;
        return 0;
    }

    int main(int argc, char* argv[]) {
        ifstream tc_in(argv[1]);

        int N;
        tc_in >> N;

        cout << N << endl;

        int guesses_count = 0;

        while (true) {
            int guess;

            cin >> guess;
            guesses_count++;

            if (guesses_count > 10) {
                return wa();
            } else if (guess < N) {
                cout << "TOO_SMALL" << endl;
            } else if (guess > N) {
                cout << "TOO_LARGE" << endl;
            } else {
                return ac(guesses_count);
            }
        }
    }

Language restriction
--------------------

You can limit which programming languages are allowed for a submission to a problem, in the **Language Restriction** subtab.
