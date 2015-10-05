.. _terminal:

Command-line tool
=================

Judgels comes with a handy command-line tool to make repetitive tasks easier.

Installation
------------

First, make sure that you:

- Have a directory that will hosts all Judgels repositories. This directory is called Judgels base directory.
- Have cloned **judgels** repository to the base directory.
- Have Python 3 installed.

Open your **~/.bashrc** (or create one), and add the following lines.

.. sourcecode:: bash

    export JUDGELS_HOME=<your-Judgels-home>
    alias judgels="python3 JUDGELS_HOME/judgels/scripts/terminal.py"

Restart your terminal to activate the script.

Usage
-----

All commands take the form of :code:`judgels <command> [ <args> ... ]`. In all commands, *<repo>* is one of Judgels' repositories, while *<app>* is one of Judgels' applications, in lowercase (like jophiel, sandalphon, etc.). Omit :code:`judgels-` prefix for *<repo>* and *<app>*. For example, to clean the build in **judgels-play-commons** repository, run :code:`judgels clean play-commons`.

The available commands are as follows.

judgels clean <repo>
    Cleans the build in <repo>. This is equivalent to running :code:`./activator clean` in <repo>.

judgels dist <repo>
    Creates a standalone distribution for <repo>. This is equivalent to running :code:`./activator clean && ./activator dist` in <repo>.

judgels kill <app>
    Kills a running Judgels application <app> in start mode (i.e., that was run by :code:`judgels start <app>` command).

judgels pull <repo>
    Pulls changes from the repository <repo> and all its dependencies, using :code:`--rebase` strategy. If any of the repository or its dependencies is not present, it will be cloned.

    <repo> can be :code:`--all`; this will pull/clone all Judgels repositories.

judgels push <repo>
    Pushes changes from the repository <repo> and all its dependencies.

    <repo> can be :code:`--all`; this will push all Judgels repositories.

judgels release <version>
    Bumps a new version for all Judgels repositories. For Judgels admins only.

judgels run <app> [ <port> ]
    Runs the application <app>. This is equivalent to running :code:`./activator run [ -Dhttp.port=<port> ]` in <repo>.

    If <port> is omitted, the defaults are:

    - jophiel: 9001
    - sandalphon: 9002
    - sealtiel: 9003
    - uriel: 9004
    - michael: 9005
    - jerahmeel: 9006

judgels start <app> <version> [ <port> ]
    Starts the application from the standalone distribution created using :code:`judgels dist` command. This is equivalent to running the standalone executable on the specified port. The Judgels application version must be specified. The default ports are the same as above.

judgels start-https <app> <version> [ <port> ]
    Same as above, but using HTTPS.

judgels status
    For each Judgels application, it will be output to the screen whether or not is currently running in start mode.
