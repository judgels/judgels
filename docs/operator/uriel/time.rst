.. _operator_uriel_time:

Managing contest times
======================

These are things that can be configured related to contest times.

Eternal
-------

Contests that are available forever. Disable **Duration** module.

Fixed-time
----------

Contests that have specific begin and end times. Enable **Duration** module. You can then specify begin time. For convenience, you don't specify the end time, but the contest duration. This way, when the contest needs to be delayed, you only have to adjust the begin time.

Virtual
-------

Contests that can be started by each contestant at their preferred time. Enable **Virtual** module. You can then specify virtual duration time. A contestant can start the contest anytime between the contest begin and end time. Then, the contest will run for that contestant for the specified virtual duration time. The contest will finish for that contestant when the contest ends or the contestant runs out of virtual duration time, whichever happens first.

Virtual contests are useful for conducting an online contest which have specified duration, but does not have to start at the same time for every contestant.

Paused
------

If **Pause** module is enabled, then the contestants cannot "do" the contest, i.e. submittion solutions or creating clarifications. This is useful when there is something wrong with the grader and you want to fix it, therefore you must stop any submissions.

The contest will end at the scheduled time -- no additional time is added if you pause contests.
