Set Up
******

Dependencies
============

Most of judgels dependencies can be resolved by using `SBT <http://www.scala-sbt.org/>`_ but there are some dependencies that needs to be installed for judgels to run:

- `Oracle Java 8 <http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html>`_;

- `MySQL <http://www.mysql.com/>`_ >= 5.6.22;

- `SBT <http://www.scala-sbt.org/>`_;

- `Git <http://git-scm.com/>`_;

- `Nginx <http://nginx.org/>`_ (for reverse proxy)

Most of the applications can be run on any Operating System except for the Gabriel (grader) because Gabriel use `Isolate <http://www.ucw.cz/moe/isolate.1.html>`_; sandbox which requires Linux kernel to run. 

To run Gabriel, you need to have Linux kernel with support to control groups and namespaces. The Operating System that Gabriel runs on need to have swap enabled and have some dependencies:

- `Isolate <http://www.ucw.cz/moe/isolate.1.html>`_: to sandbox compilation and evaluation of source codes;

- `Gnu Compiler Collection <https://gcc.gnu.org/>`_ (for compilation of C and C++ codes) > 4.7;

- `Free Pascal <http://www.freepascal.org/>`_ (for compilation of Pascal codes);

- `Python <https://www.python.org/>`_ (for compilation of Python codes) > 3.0.

Installation
============

To install judgels, you need to clone the latest version of judgels from `GitHub <https://github.com/ia-toki/judgels>`_ and run "git submodule update --init" to clone all of its' submodules.

After cloning judgels from GitHub, you can run each applications from their directory by executing "activator" or "sbt" (only for gabriel and gabriel-commons). From the submodules, the directories with suffix "_commons" are to reduce codes duplication. Please refer to `Play Framework <http://www.playframework.com/>`_ and `SBT <http://www.scala-sbt.org/>`_ documentation to run the applications.

Configuration
=============

After installing judgels, you need to fill the configuration such as database, session cookie name, etc. There are default configuration files in "conf" directory or "src/resources/conf" (for Gabriel) with suffix "_default.conf". You can copy the configuration files, remove the suffix "_default" (i.e. application_default.conf -> application.conf) and configure the values accordingly.