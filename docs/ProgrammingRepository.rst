Programming Repository (Sandalphon)
***********************************

Configuration
=============

First copy default configuration in "conf" directory:
- application_default.conf -> application.conf
- db_default.conf -> db.conf

Create a database for storing Sandalphon data. Then change the configuration of Sandalphon to point to the database in "conf/db.conf" file.

Sandalphon uses Jophiel for authentication and authorization. You need to configure Jophiel's parameter in "conf/application.conf" file.

Sandalphon needs a directory to save data such as problems and submissions. You can find the configuration in "conf/application.conf" file.

Sandalphon uses Gabriel to grade programming submissions. Gabriel can only be contacted through Sealtiel that acts as queue manager and router. You need to configure the parameter in "conf/application.conf" file.

Sandalphon depends on judgels-play-commons, judgels-gabriel-commons, and judgels-frontend-commons to run, make sure judgels-play-commons, judgels-gabriel-commons, and judgels-frontend-commons are on the same level of directory with Sandalphon.

Running Sandalphon
==================

You can run Sandalphon by using "activator start" command. By default, it will listen on port 9000. You can access it via web browser using url "http://localhost:9000". 

At the first run, you need to have Jophiel's account in order to login. After you login into Sandalphon you can change the value of your roles in table "sandalphon_user_role" from "user" into "user,writer,admin" to access full feature.

Sandalphon User Roles
=====================

Currently there are three roles in Sandalphon:

1. Normal User

   Currently normal user who can do nothing on Sandalphon.

2. Writer

   Writer can manage (CRUD), test programming problems and give programming problem access to clients.

3. Admin

   Admin can manage (CRUD) clients and graders. Sandalphon's clients can render programming problem that has been given access to. Sandalphon's graders can fetch testcases through given API.

Client's Problem Rendering
==========================

After Client registration, each Client is given client ID and client Secret for Sandalphon's API authentication. Currently, Sandalphon only has the API to render problem.

Each Problem can be given access to any client registered on Sandalphon. Client that has been given access gets "Problem Secret". Client can render problem using certain API that requires `Time-based One Time Password <http://en.wikipedia.org/wiki/Time-based_One-time_Password_Algorithm>`_ that can be generated using "Problem Secret". TOTP is used to ensure security that programming problem can only be accessed through the link in limited duration.

Future Target
=============

Currently Sandalphon's writer are only accessible for limited people. In the future, we want every user to become writer that can create problem and share it with each others.
