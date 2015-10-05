.. _overview:

Overview of Judgment Angels
===========================

What's Judgment Angels?
-----------------------

**Judgels** (**Judgment Angels**) is a set of modular applications for educational programming purposes, such as:

- creating and storing programming problems,
- holding programming contests,
- holding learning courses for programming,
- discussing programming problems in forum,
- and many more.

Each user uses a single account to access all services.

This project was initiated by `Ikatan Alumni Tim Olimpiade Komputer Indonesia <http://blog.ia-toki.org/>`_ (English: Indonesia Computing Olympiad Alumni Association).

Judgels applications
--------------------

Judgels consists of several applications that work with each other. Each application has a codename after a Greek archangel name.

At the moment, there are eight applications in Judgels:

Jophiel (Single Sign-On)
    Authenticates and authorizes users in other Judgels applications. The motivation is that a user should have only a single account accross all Judgels applications. It uses OpenID Connect protocol.

Sealtiel (Message Gate)
    The bridge that handles asynchronous messages between Judgels applications. Currently it is only used for delivering grading requests and responses between Gabriel and other Judgels applications that need grading.

Sandalphon (Repository Gate)
    Stores programming resources, for example, problems and lessons. The resources can then be used by other Judgels applications, like Uriel and Jerahmeel.

Uriel (Competition Gate)
    Holds programming contests.

Jerahmeel (Training Gate)
    Holds programming training and problemsets archive.

Raguel (Forum)
    Place for discussions.

Gabriel (Grader)
    Grades programming submission requests from Sandalphon/Uriel/Jerahmeel in a sandbox, then sends back the results via Sealtiel.

Michael (Alchemy Gate)
    **[EXPERIMENTAL]** Monitors machines used for running other applications.


The applications are designed to be modular. For example, multiple instances of Uriel can share the same Sandalphon and Jophiel instance. They are also designed to be distributed: the required application instances do not have to be installed in one single machine. We can install one application in one machine and some others in other machines.

Judgels applications are still being heavily developed and do not have any stable releases yet. Anyone can try at their own risks.

Repository
----------

Judgels is open source. The whole source code is hosted in GitHub: `https://github.com/judgels <https://github.com/judgels>`_.

Credits
-------

This project is currently being developed by the following people, each in alphabetical order.

**Maintainers**

- Ashar Fuadi (`@fushar <https://github.com/fushar/>`_)
- Jordan Fernando (`@dragoon20 <https://github.com/dragoon20/>`_)
- Petra Novandi Barus (project manager) (`@petrabarus <https://github.com/petrabarus/>`_)

**Contributors**

- Bagus Seto Wiguno (`@bswig <https://github.com/bswig/>`_)
- Deny Prasetyo (`@jasoet <https://github.com/jasoet/>`_)
- Ivan Hendrajaya (`@ivanhendrajaya <https://github.com/ivanhendrajaya/>`_)
- Inggriani Liem
- Adi Mulyanto
- Arief Widhiyasa
- Derianto Kusuma
- Brian Marshal
- William Gozali

Public contributions are welcome. Please consult the Developer's Guide on how Judgels works in details.

License
-------

Judgels is licensed using GNU GPL version 2.
