Configurations
==============

Creating contests
-----------------

#. Open Uriel and click **Contests** on the left.
#. Click **Create New**.
#. Fill in the values. Most fields are self-explanatory. The ones that aren't are:

   Exclusive Contests?
       If true, then if this contest is running for a contestant, then the he cannot access the other contests.

   Use Scoreboard?
       Whether to enable scoreboard in the contest.

   Incognite Scoreboard?
       If true, then a contestant can only view his score in the scoreboard.

   Requires Password
       Whether a contestant must type a contest password to enter a contest.

The configuration you just filled above is general configuration. Specific configuration are available depending on the classification below.

Contest classifications
-----------------------

Contests in Uriel are classified based on three aspects: **types**, **scopes**, and **styles**.

Contest types
*************

Standard
    A normal contest with fixed contest times. Configuration specific to this type are:

    Scoreboard freeze time
        When to freeze the scoreboard.

    Official scoreboard allowed?
        Whether to show the official (unfrozen) scoreboard.

Virtual
    A contest where the contestants can choose when they start their contest themselves. Configuration specific to this type are:

    Contest duration
        The duration of the contest for each contestant.

    Who can start the contest?
        Can be Contestant (for indivudal contests) or Coach (for team-based contests).

Contest scopes
**************

Public
    Everyone can join this contest. Configuration specific to this type are:

    Register start time
        Registration start time.

    Register end time
        Registration end time.

    Max registrants
        0 for unlimited.

Private
    A user must be added manually to this contest to participate.

Contest styles
**************

IOI
    IOI-style contest.

ICPC
    ICPC-style contest. Currently NOT IMPLEMENTED.

Both styles have language restriction specific configuration. Ultimately, the languages allowed for a problem in a contest are, the intersection of languages allowed for the problem in Sandalphon, and languages allowed for the contest.
