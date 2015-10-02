.. _operator_uriel:

Competition Gate
================

Competition Gate is a place for holding contests. As of now, only programming contests are supported. Specifically, only ICPC-style and IOI-style programming contests are supported. Contests with bundle problems are not (yet) supported.

First, let's learn about operator roles in Competition Gate. There are three roles: **admins**, **managers**, and **supervisors**. Admin role is global throughout Competition Gate, while manager and supervisor roles are specific to a certain contest.

Admin
    - Can create new contests.
    - Can assign managers to a contest.
    - Can remove managers from a contest.
    - Can do all managers' and supervisors' tasks.

Manager
    - Can edit contest's configurations.
    - Can assign supervisors to/from a contest.
    - Can remove problems from a contests.
    - Can remove contestants from a contest.
    - Can do all supervisors's tasks.

Supervisor
    Can supervise a contest based on the given permissions. For example: posting announcements, answering clarifications, adding problems, adding contestants, adding files, etc. It cannot perform destructive tasks such as removing problems and contestants.

For simplicity, by "contest manager" we mean contest manager or admin, and by "contest supervisor" we mean contest supervisor, contest manager, or admin.

You will learn how to do contest-related tasks in the next sections.

**Table of Contents**

.. toctree::
   :maxdepth: 1

   contest
   style
   scope
   time
   person
   problem
   team
   trigger
   password
   announcement
   clarification
   submission
   scoreboard
   file
   lock
   module


