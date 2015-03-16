Competition Gate (Uriel)
************************

Configuration
=============

First copy default configuration in "conf" directory:
- application_default.conf -> application.conf
- db_default.conf -> db.conf

Create a database for storing Uriel data. Then change the configuration of Uriel to point to the database in "conf/db.conf" file.

Uriel uses Jophiel for authentication and authorization. You need to configure Jophiel's parameter in "conf/application.conf" file.

Uriel needs a directory to save data such as team avatars. You can find the configuration in "conf/application.conf" file.

Uriel uses Sandalphon to render problems. You need to configure Sandalphon's parameter in "conf/application.conf" file.

Uriel uses Gabriel to grade programming submissions. Gabriel can only be contacted through Sealtiel that acts as queue manager and router. You need to configure the parameter in "conf/application.conf" file.

Uriel depends on judgels-play-commons, judgels-gabriel-commons, and judgels-frontend-commons to run, make sure judgels-play-commons, judgels-gabriel-commons, and judgels-frontend-commons are on the same level of directory with Uriel.

Running Uriel
=============

You can run Uriel by using "activator start" command. By default, it will listen on port 9000. You can access it via web browser using url "http://localhost:9000". 

At the first run, you need to have Jophiel's account in order to login. After you login into Uriel you can change the value of your roles in table "uriel_user_role" from "user" into "user,admin" to access full feature.

Uriel User Roles
================

Currently there are two main roles in Uriel:

1. Normal User

   Normal user can register to open contests, enter registered contests, solve problems, and do other contest related stuff.

3. Admin

   Admin can manage (CRUD) contests and user roles.

Besides main roles, there are also implicit roles in Uriel:

1. Coach

   Coach can start a virtual contest for the team. This role is specifically made to be used in APIO like contest.

2. Supervisor

   Supervisor can manage contest announcements, clarifications, contestants, problems, and submissions based on the access given.

3. Manager

   Manager is assigned by admin. Manager can do stuff that supervisor can do and manage supervisors and their access.

