Introduction
************

Judgels (Judgment Angels) is a software to conduct any events related to programming education such as programming contests, programming classes, online judge, etc. It was build as a set of distributed applications by Indonesia Informatics Olympiad Team (Ikatan Alumni Tim Olimpiad Komputer Indonesia). Judgels is designed to be extensible, adaptable, and modular so that it can be used in any events related to programming education.

Judgels is still in development and does not have stable release yet. However anyone can see and use the source codes on `github <https://github.com/ia-toki/judgels>`_ at their own risks.

System Structure
================

Judgels is separated of several applications based on concerns. Each application can run on different machines and connects to each others. 

Each application are independent to do their own functions but there are dependencies in other functions. Each application have their own data stored in MySQL database so that if a application is not working properly, the administrator can replace it with an identical one (without moving the data).


Applications
============

Judgels applications is codenamed using angels' names.
The judgels applications are:

- Single Sign On Application (`jophiel <https://github.com/ia-toki/judgels-jophiel>`_): authenticate and authorize users;

- Programming Resource Repository Application (`sandalphon <https://github.com/ia-toki/judgels-sandalphon>`_): the application that the problem and material writers will be interacting with;

- Competition Gate Application (`uriel <https://github.com/ia-toki/judgels-uriel>`_): the application that provide gateway for contestants to interact with and for manager to control and modify contests' parameters;

- Middleware Application (`sealtiel <https://github.com/ia-toki/judgels-sealtiel>`_); the application that provide messages transmissions using queues (is used for queueing submissions to be evaluated);

- Grader Application (`gabriel <https://github.com/ia-toki/judgels-gabriel>`_); the application that grades submissions.

At the current moment there are only 5 applications, we are still working on other applications to support programming courses and online judges. Each applications can be run on multiple machines to ensure scalability. Some applications share commons to reduce duplication of codes.

