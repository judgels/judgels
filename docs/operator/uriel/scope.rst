.. _operator_uriel_scope:

Managing contest scope
======================

This refers to how a user can join a contest (i.e., become a contestant).

Public
------

In this scope, everyone can join the contest. To enable public scope, simply disable **Limited** module.

This scope is further divided into two types.

Public with registration
************************

A user need to register before they can join the contest.

To enable registration, enable **Registration** module. In the module configuration, you can specify registration start and end times, and the maximum number of allowed registrants. By default, a registered user can automatically join the contest when the contest starts, unless you enable the **Manual Approval** option in the module configuration.

If you want to gather users' organizations or institutions in the contest, simply enable **Organization** as well. Then, when a user registers, they must provide their organization.

Public without registration
***************************

A user need not register before they can join the contest. Typically, this scope is used for really public contests; for example, an introductory contest containing sample introductory problems.

Simply disable the **Registration** module.

Private
-------

In this scope, supervisors have to manually add contestants to the contest before they can join the contest. The contest won't be shown in the contests list for guests or non-contestants.

To enable private scope, disable **Registration** module and enable **Limited** module.
