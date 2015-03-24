Single Sign On (Jophiel)
************************

Configuration
=============

First copy default configuration in "conf" directory:
- application_default.conf -> application.conf
- db_default.conf -> db.conf

Create a database for storing Jophiel data. Then change the configuration of Jophiel to point to the database in "conf/db.conf" file.

You also need to configure smtp email to support Jophiel email verification feature. You can find the configuration in "conf/application.conf" file.

Jophiel needs a directory to save data such as avatar files. You need to create one and configure the directory in "conf/application.conf" file.

Jophiel depends on judgels-play-commons to run, make sure judgels-play-commons is on the same level of directory with Jophiel.

Running Jophiel
===============

You can run Jophiel by using "activator start" command. By default, it will listen on port 9000. You can access it via web browser using url "http://localhost:9000". 

At the first run, you need to register and verify your email in order to login. After your first user is created, you can change the value of your roles in table "jophiel_user" from "user" into "user,admin" to access full feature.

Jophiel User Roles
==================

Currently there are two roles in Jophiel:

1. Normal User

   Currently normal user can only edit their profile on Jophiel.

2. Admin

   Admin can manage (CRUD) users and manage (CRUD) clients. Jophiel clients can use Jophiel single sign on for authentication and authorization.

Single Sign On Protocol
=======================

Jophiel uses `Open Id Connect <http://openid.net/connect/>`_ Protocol for single sign on. Since Open Id Connect is built on top of OAuth 2.0 protocol, it provides authorization besides authentication. Each Jophiel Client's manage their own authentication and authorization using Jophiel's provided API, access token, and id token.

Future Target
=============

Currently Jophiel is meant to be used for private clients of IA TOKI. In the future, we want each user to be able to use Jophiel Single Sign On to create applications.