Introduction
============

**Judgels** (**Judgment Angels**) is a set of modular applications for educational programming purposes. It was initiated by `Ikatan Alumni Tim Olimpiade Komputer Indonesia <http://blog.ia-toki.org/>`_ (English: Indonesia Computing Olympiad Alumni Association). It is designed to support:

- competitive programming contests,
- competitive programming problem archive,
- academic programming classes,
- programming training courses,
- etc.

It is open source. Anyone can view and use the codebase on `GitHub <https://github.com/judgels>`_.

Applications
------------

Judgels consists of several applications that work with each other. Each application has a codename after a Greek archangel name.

At the moment, there are seven applications in Judgels:

#. **Jophiel** (Single Sign-On) : authenticates and authorizes users in other applications.
#. **Sandalphon** (Repository Gate): stores programming problems and lessons.
#. **Sealtiel** (Message Gate): provides message queues and transmissions between applications.
#. **Uriel** (Competition Gate): holds programming contests.
#. **Michael** (Alchemy Gate): monitors machines used for other applications.
#. **Jerahmeel** (Training Gate): holds programming training and provides problem archive.
#. **Gabriel** (Grader): grades programming submissions.

The applications are designed to be modular. For example, multiple instances of Uriel can share the same Sandalphon and Jophiel instance. They are also designed to be distributed: the required application instances do not have to be installed in one single machine. We can install one application in one machine and some others in other machines.

Judgels applications are still being heavily developed and do not have any stable releases yet. Anyone can try at their own risks.

Framework
---------

All Judgels applications, except Gabriel, are developed using `Play Framework 2.4.2 (Java) <https://www.playframework.com>`_. For convenience, we will call them **Judgels Play applications**. The Java version used is Java 8. Gabriel is written in Java 8, and uses `Moe Contest Environment <http://www.ucw.cz/moe/>`_ for the sandbox.

License
-------

Judgels is licensed using GNU GPL version 2.

Developers
----------

This project is currently being developed by the following people, each in alphabetical order.

Maintainers
***********

- Ashar Fuadi (`@fushar <https://github.com/fushar/>`_)
- Jordan Fernando (`@dragoon20 <https://github.com/dragoon20/>`_)
- Petra Novandi Barus (project manager) (`@petrabarus <https://github.com/petrabarus/>`_)

Contributors
************

- Bagus Seto Wiguno (`@bswig <https://github.com/bswig/>`_)
- Deny Prasetyo (`@jasoet <https://github.com/jasoet/>`_)
- Ivan Hendrajaya (`@ivanhendrajaya <https://github.com/ivanhendrajaya/>`_)
- Inggriani Liem
- Adi Mulyanto
- Arief Widhiyasa
- Derianto Kusuma
- Brian Marshal
- William Gozali

Public contributions are welcome. Please consult the Developer's Guide on how Judgels works in detail.
