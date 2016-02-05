.. _operator_uriel_module:

Contest module references
=========================

Here is a complete reference of all available contest modules.

Limited
-------

Prevents the contest from being shown and being registered by public users. Contestants must be expicitly added by supervisors.

Conflicting modules
*******************

- Registration

Registration
------------

Allows public users to register to the contest.

Configurations
**************

Registration start time
    The earliest time users can register.

Registration duration
    How long users can register since the start time.

Requires manual approval?
    Whether supervisors must manually approves the registrants.

Max registrants
    Maximum number of registrants. Set to 0 if unlimited.

Conflicting modules
*******************

- Limited

Organization
------------

When enabled, users must enter their organization/institution when registering for the contest.

Required modules
****************

- Registration

Duration
--------

Sets a fixed time of contest time.

Configurations
**************

Contest begin time
    When the contest begins.

Contest duration
    Duration of the contest.

Virtual
-------

Allows users to start the contest at their own preferences of starting time.

Configurations
**************

Virtual contest duration
    Maximum time a user can do the contest.

Conflicting modules
*******************

- Freezable Scoreboard

Paused
------

Pauses the contest. Users cannot submit or make clarifications. No additional time is given.

Supervisors
-----------

Allows supervisors to be added in the contest.

Teams
-----

Make the contest team-based.

External Trigger
----------------

Make a virtual, team-based contest to be able to be started by the external person.

Configurations
**************

Contest will be started by
    Who can trigger the contest. Currently can only be set to coach.

Required modules
****************

- Virtual
- Teams

Password
--------

Set passwords that must be typed by the contestants before they can enter the contest.

Clarifications
--------------

Enable clarifications in the contest.

Clarifications Time Limit
-------------------------

Sets how long contestants can make clarifications.

Configurations
**************

Clarification duration
    How long contestants can make clarifications, since the beginning of the contest.

Required modules
****************

- Clarification
- Duration

Scoreboard
----------

Enable scoreboard in the contest.

Configurations
**************

Incognito scoreboard?
    Whether a contestant can only see their own scores in the scoreboard.

Freezable Scoreboard
--------------------

Allow the scoreboard to be frozen.

Configurations
**************

Scoreboard freeze time
    When the scoreboard will freeze, specified as duration before the contest ends.

Scoreboard has been unfrozen?
    If this is checked, scoreboard will be unfrozen.

Required modules
****************

- Duration
- Scoreboard

Conflicting modules
*******************

- Virtual

Files
-----

Allow public files to be uploaded to the contest.
