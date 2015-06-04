.. _setup:

Setup
=====

A Judgels application is installed by cloning and building the source code from GitHub. A Judgels application may depend on other Judgels applications to work. Judgels is designed to be distributed, so:

- More than one applications can be installed on one machine.
- Two applications can work together regardless of whether or not they are on the same machine.

Requirements
------------

Theoretically, all Judgels applications except Gabriel can run on any operating system. However, we have not tested thoroughly on Windows. Therefore, we strongly recommend that you use UNIX-based operating systems (Linux or OS X). Also, throughout this documentation, it will be assumed that you are using Linux or OS X.

The following packages must be installed on any machine that hosts any Judgels application:

- `Oracle Java 8 <http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html>`_
- `Git <http://git-scm.com/>`_
- `Python 3 <https://www.python.org>`_

Specific requirements for each Judgels application will be mentioned in the respective application page.

Installation
------------

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

Now, you can install Judgels applications, using the command **judgels pull <app>**. For example, if you want to install Jophiel, run

.. sourcecode:: bash

    judgels pull jophiel

Finally, follow the installation steps of the application in the respective application page.
