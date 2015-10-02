Managing contests
=================

A contest can **only** be created by an operator with **admin** role. After the contest has been created, the admin can then assign one or more **managers** to it. The managers or the admin themselves will configure the contests.

Contest components
------------------

When you create a new contest, you will be presented with the following fields.

Name
    The contest name.

Description
    The contest description that will be shown to the public. Can contain promotion text so that users register to this contest, etc.

Style
    Currently two styles are supported: ICPC-style and IOI-style contests. Further details will be given in the next sections.

Contest managements aspects
---------------------------

Contest managements refer to configuring contest before the contest starts and supervising contest during the contest.

Contest managements are divided into several aspects. Each aspect can consist of configuration units called **contest modules**. Each module can be enabled or disabled (almost) independently. Some contest modules also have module configurations that can be further specified when the modules are enabled.

Here is an overview of contest management aspects:

:ref:`operator_uriel_style`
    How to configure settings related to the contest style, such as ICPC time penalty etc, allowed programming languages, etc.

:ref:`operator_uriel_scope`
    How to control who can access the contest, can users register to the contest, etc.

:ref:`operator_uriel_time`
    How to specify the duration of the contest, can the contest be started virtually, etc.

:ref:`operator_uriel_person`
    How to add people with different roles to the contest: managers, supervisors, and contestants.

:ref:`operator_uriel_problem`
    How to add problems from Repository Gate to the contest.

:ref:`operator_uriel_team`
    How to make the contest team-based.

:ref:`operator_uriel_trigger`
    How to control who can start the contest.

:ref:`operator_uriel_password`
    How to set passwords in the contest.

:ref:`operator_uriel_announcement`
    How to use announcements in the contest.

:ref:`operator_uriel_clarification`
    How to enable and use clarifications in the contest.

:ref:`operator_uriel_submission`
    How to view and regrade submissions in the contest.

:ref:`operator_uriel_scoreboard`
    How to enable scoreboards in the contest, set scoreboard freeze time, etc.

:ref:`operator_uriel_file`
    How to upload public files in a contest.

:ref:`operator_uriel_lock`
    How to lock a contest after it ends.

Finally, the full references of all contest modules are available in :ref:`operator_uriel_module`.
