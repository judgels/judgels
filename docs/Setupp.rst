Setup
=====

This page describes how to properly install Judgels on your system.

Requirements
------------

The following packages must be installed on your machine(s), for all Judgels applications:

- `Oracle Java 8 <http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html>`_
- `MySQL <http://www.mysql.com/>`_ >= 5.6
- `SBT <http://www.scala-sbt.org/>`_ >= 0.13
- `Git <http://git-scm.com/>`_;
- `Nginx <http://nginx.org/>`_ (for reverse proxy)

All Judgels applications can run on any operating systems, except for Gabriel.

Here are the requirements for each specific Judgels application.

Jophiel, Sandalphon, Uriel
**************************

*(no additional requirements)*

Sealtiel
**********

- `RabbitMQ <https://www.rabbitmq.com/>`_

Gabriel
*******

- Linux operating system that support `control groups swap limit <http://docs.docker.com/installation/ubuntulinux/#adjust-memory-and-swap-accounting>`_
- `Gnu Compiler Collection <https://gcc.gnu.org/>`_ >= 4.7 (for C/C++ grading language support)
- `Free Pascal <http://www.freepascal.org/>`_ (for Pascal grading language support)
- `Python <https://www.python.org/>`_ >= 3 (Python grading language support)

Installation
------------

To install judgels, you need to clone the latest version of judgels from `GitHub <https://github.com/ia-toki/judgels>`_ and run "git submodule update --init" to clone all of its' submodules.

After cloning judgels from GitHub, you can run each applications from their directory by executing "activator" or "sbt" (only for gabriel and gabriel-commons). From the submodules, the directories with suffix "_commons" are to reduce codes duplication. Please refer to `Play Framework <http://www.playframework.com/>`_ and `SBT <http://www.scala-sbt.org/>`_ documentation to run the applications.

Configuration
-------------

After installing judgels, you need to fill the configuration such as database, session cookie name, etc. There are default configuration files in "conf" directory or "src/resources/conf" (for Gabriel) with suffix "_default.conf". You can copy the configuration files, remove the suffix "_default" (i.e. application_default.conf -> application.conf) and configure the values accordingly.
