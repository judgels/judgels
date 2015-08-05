Dependencies
============

Sandalphon depends on other Judgels applications to run correctly. Here is the dependency diagram.

.. image:: _static/sandalphon-deps.png
    :align: center

An arrow pointing from A to B means that A depends on B. The dependencies between applications are described as follows.

A. Sandalphon connects to Jophiel for user authentication and authorization.
B. Sandalphon connects to Sealtiel for sending grading requests and polling grading responses.
C. Gabriel connects to Sealtiel for polling grading requests and sending grading responses.
D. Gabriel connects to Sandalphon for fetching test cases.
