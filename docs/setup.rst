.. _setup:

Setup
=====

A Judgels application is installed by cloning and building the source code from GitHub. A Judgels application may depend on other Judgels applications to work. Judgels is designed to be distributed, so:

- More than one applications can be installed on one machine.
- Two applications can work together regardless of whether or not they are on the same machine.

Requirements
------------

Theoretically, all Judgels applications except Gabriel can run on any operating system. However, we have not tested thoroughly on Windows. Therefore, we strongly recommend that you use UNIX-based operating systems (Linux or OS X). Also, throughout this documentation, it will be assumed that you are using Linux or OS X.

The following programs must be installed on any machine that hosts any Judgels application:

- `Oracle Java 8 <http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html>`_
- `Git <http://git-scm.com/>`_
- `Python 3 <https://www.python.org>`_

Specific requirements for each Judgels application will be mentioned on the respective application page.

Installing main repository
--------------------------

Judgels consists of many repositories. Create a directory that will store Judgels repositories. We will denote it as Judgels base directory. There must be only one Judgels base directory even though more than one applications will be installed on the machine.

First, clone the main Judgels repository. This repository will act as a gate to the other Judgels repositories.

.. sourcecode:: bash

    cd <your-Judgels-base-directory>
    git clone https://github.com/ia-toki/judgels

Then, we will install Judgels terminal script that will enable many convenience commands in the terminal. Open your **~/.bash_profile** (or create one), and add the following lines.

.. sourcecode:: bash

    export JUDGELS_BASE_DIR=<your-Judgels-base-directory>
    alias judgels="python3 $JUDGELS_BASE_DIR/judgels/scripts/terminal.py"

Restart your terminal to activate the script.

More information about this command-line tool can be found here: :ref:`Command-line tool <terminal>`.

Installing database
-------------------

All Judgels Play applications requires a connection a working MySQL database server. Install a MySQL server. Then, create a database named **judgels_<app>** (note the underscore, not dash) for each Judgels Play application <app> you want to install. For example: **judgels_jophiel**.

Installing application
----------------------

If you want to install a Judgels application <app>, run

.. sourcecode:: bash

    judgels pull <app>

(For example: :code:`judgels pull jophiel`.)

This will clone the repositories of the application and all its dependencies. Then, you should follow the instruction on the respective application page. But, first modify the configuration files as explained in the next section. Some configuration keys are common to all application, so the instruction is provided on this page.

Modifying configuration files
-----------------------------

All Judgels applications require editing configuration files. This section will explain the configuration keys that are common to all applications, except Gabriel. If you are installing Gabriel, skip this section. Specific configuration keys are explained in the respective application section.

First, copy the default configuration files. Run these commands in the application repository.

.. sourcecode:: bash

    cp conf/application_default.conf conf/application.conf
    cp conf/db_default.conf conf/db.conf

Here are the configuration keys you need to modify. Note that if a key is not listed here or on the specific application page, then you don't need to modify its value.

Application configuration
*************************

The configuration file to modify is **conf/application.conf**.

application.title
    The displayed title/name of application. For example: "Public Competition Gate".

application.copyright
    The displayed copyright/institution name that hosts the application. For example: "XXX University".

application.secret
    Play framework's secret key for cryptographics functions. The default value must be changed for security. See https://www.playframework.com/documentation/2.3.x/ApplicationSecret for more details.

session.secure
    Set to true if you use HTTPS.

<app>.baseUrl
    The base URL address of the application. Do not include trailing slash. For example: "http://localhost:9001". ("http://localhost:9001/" is wrong.)

<app>.baseDataDir
    The absolute path of a local directory that hosts this application's data files. For example: "/home/user/judgels/data/jophiel".

googleAnalytics.{use, id}
    Set **use** to true to enable Google Analytics reporting. If used, set **id** to the Google Analytics ID.

Database configuration
**********************

The configuration file to modify is **conf/db.conf**.

url
    Fill it with database URL. If you install MySQL in localhost, the value should be "jdbc:mysql://localhost/judgels_<app>".

user
    Database's username.

password
    Database's password.
