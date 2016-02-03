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

Judgels consists of many repositories. Create a directory that will store Judgels repositories. We will denote it as Judgels home. There must be only one Judgels home even though more than one applications will be installed on the machine.

First, clone the main Judgels repository. This repository will act as a gate to the other Judgels repositories.

.. sourcecode:: bash

    cd <your-Judgels-home>
    git clone https://github.com/judgels/judgels

Then, we will install Judgels terminal script that will enable many convenience commands in the terminal. Open your **~/.bashrc**, and add the following lines.

.. sourcecode:: bash

    export JUDGELS_HOME=<your-Judgels-home>
    alias judgels="python3 $JUDGELS_HOME/judgels/scripts/terminal.py"

Restart your terminal to activate the script.

More information about this command-line tool can be found here: :ref:`Command-line tool <terminal>`.

Installing Activator
--------------------

All Judgels applications use Typesafe Activator as the wrapper for SBT. Activator is needed for compiling, running, starting, and distributing the applications.

First, download Activator:

.. sourcecode:: bash

    cd $JUDGELS_HOME
    judgels/scripts/download-activator.sh

Then, add this line to your **.bashrc**:

.. sourcecode:: bash

    export PATH=$PATH:~/activator

Try running Activator:

.. sourcecode:: bash

    activator

If it ran, then Activator has been installed successfully.

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
    cp conf/akka_default.conf conf/akka.conf

Here are the configuration keys you need to modify. Note that if a key is not listed here or on the specific application page, then you don't need to modify its value.

Application configuration
*************************

The configuration file to modify is **conf/application.conf**.

general.title
    The displayed title/name of application. For example: "Public Competition Gate".

general.copyright
    The displayed copyright/institution name that hosts the application. For example: "XXX University".

general.canonicalUrl
    The same value as **<app>.baseUrl**.

play.crypto.secret
    Play framework's secret key for cryptographics functions. The default value must be changed for security. See https://www.playframework.com/documentation/2.4.x/ApplicationSecret for more details.

play.http.session.secure
    Set to true if you use HTTPS.

<app>.baseUrl
    The base URL address of the application. Do not include trailing slash. For example: "http://localhost:9001". ("http://localhost:9001/" is wrong.)

<app>.baseDataDir
    The absolute path of a local directory that hosts this application's data files. For example: "/home/user/judgels/data/jophiel".

seo.{metaKeywords, metaDescription}
    SEO meta keywords and description.

google.analytics.*
    See optional features section below.

google.serviceAccount.*
    See optional features section below.

redis.*
    See optional features section below.

Database configuration
**********************

The configuration file to modify is **conf/db.conf**.

url
    Fill it with database URL. If you install MySQL in localhost, the value should be "jdbc:mysql://localhost/judgels_<app>".

username
    Database's username.

password
    Database's password.

Akka configuration
******************

Akka is used for concurrency management. It is safe to use the default configuration without modification.

.. _play_run:

Setting up optional features
----------------------------

Google Analytics reporting
**************************

This corresponds to **google.analytics.\*** keys in **application.conf**.

Set **use** to true to enable Google Analytics reporting.

If used, set **id** to the Google Analytics ID. You should have different views for each Judgels Play application. You will have a unique view ID in Google Analytics. Set **viewId** to that ID.

Google Service Account
**********************

This corresponds to **google.serviceAccount.\*** keys in **application.conf**.

Set **use** to true to enable pulling Google Analytics reporting.

If used, go to Google Developers Console and register a credentials. Set the appropriate values then. Currently it is only used for showing current active users.

.. note::

    It is an **EXPERIMENTAL** feature as there is limit on the number of requests, so it is usually turned off now.

Redis
*****

You can use in-memory cache Redis for performance.

To use Redis:

- Set up a working Redis installation.
- Modify **redis.\*** keys in **application.conf** accordingly.
- In **application.conf**, add two new modules:

  .. sourcecode:: bash

      enabled += "com.typesafe.play.redis.RedisModule"
      enabled += "org.iatoki.judgels.play.jedis.JedisModule"


.. note::

    It is an **EXPERIMENTAL** feature. The only things that are cached are queries to IDs.


Running Judgels Play applications
---------------------------------

After the installation and configuration, we can run Judgels play applications in two modes.

Development mode
****************

Run the :code:`judgels run <app>` command. This mode is intended for development environment. Classes will be automatically recompiled if there are changes in the corresponding source files, without having to restart the application.

Production mode
***************

In production mode, we will deploy standalone executable files without the source code.

#. Run the :code:`judgels dist <app>` command. It will create a zip file JUDGELS_HOME/dist/**<app>-<version>.zip**.
#. Copy the zip file to the target machine, in its own JUDGELS_HOME/dist directory.
#. Unzip the file. There should be a directory JUDGELS_HOME/dist/<app>-<version>.
#. If you run in HTTPS, you have to create a directory **conf** inside the above directory. This is probably a Play framework bug, and has been reported in this `GitHub issue <https://github.com/playframework/playframework/issues/4820>`_.
#. Run the :code:`judgels start <app> <version>` or :code:`judgels start-https <app> <version>` command.


Setting Nginx reverse proxy
***************************

The URLs like http://localhost:900x are ugly. We can set up nice domain names using Nginx reverse proxy.

#. Install Nginx.
#. Set up virtual hosts. Assume that we want to set up Jophiel. Create a file named **jophiel** in **/etc/nginx/sites-available/** with this content: ::

       server {
           listen 80;
           server_name jophiel.judgels.local;

           location / {
               proxy_pass              http://localhost:9001;
               proxy_set_header        Host $host;
               proxy_set_header        X-Real-IP $remote_addr;
               proxy_set_header        X-Forwarded-For $proxy_add_x_forwarded_for;
               proxy_connect_timeout   150;
               proxy_send_timeout      100;
               proxy_read_timeout      100;
           }
       }

   The virtual host setting files for the other applications are similar. Just modify the server name and port number accordingly. The above server name is recommended for local development setup.

#. Enable the virtual host.

   .. sourcecode:: bash

       cd /etc/nginx/sites-enabled
       sudo ln -s ../sites-available/jophiel .

#. Reload Nginx.
#. Make the server name point to the server IP address. For local development setup, this can be done by adding this line to **/etc/hosts**: ::

       127.0.0.1    jophiel.judgels.local

   For production setup, add the subdomain on your domain management web interface.

#. That's it. The Judgels application can be opened on your browser using the new server name (in this case, http://jophiel.judgels.local).
