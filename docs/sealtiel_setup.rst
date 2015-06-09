Setup
=====

Installing RabbitMQ
-------------------

Sealtiel internally uses RabbitMQ. So, it must be installed first. Follow the installation instruction here: `Downloading and Installing RabbitMQ <https://www.rabbitmq.com/download.html>`_. Make sure you install at least version **3.5.x**.

After you installed RabbitMQ, enable the management plugin:

.. sourcecode:: bash

    rabbitmq-plugins enable rabbitmq_management

If everything goes well, you should be able to open the management web interface on http://localhost:15672. You can login with the default user (username: **guest**, password: **guest**).

Configuring RabbitMQ
--------------------

For security, you must change the guest user password.

#. Log in to the management web interface.
#. Click **Admin** tab.
#. Click **guest** user.
#. On the **Update this user** section, enter new password.
#. Click **Update user**.

Installing Sealtiel
-------------------

First, follow the :ref:`main Judgels setup <setup>` instructions if you haven't. This means that you should have installed Sealtiel by running

.. sourcecode:: bash

    judgels pull sealtiel

and should have modified the common configuration keys in **conf/application.conf** and **conf/db.conf**.

Configuring Sealtiel
--------------------

This section will cover the specific configuration keys for Sealtiel.

sealtiel.{username, password}
    The credentials for logging in to Sealtiel. Note that Sealtiel does not use Jophiel for logging in.

rabbitmq.{host, port, username, password, virtualHost}
    The credentials for connecting to RabbitMQ. In most cases, you only need to change **rabbitmq.password** to the new guest password.

Running RabbitMQ
----------------

Run

.. sourcecode:: bash

    rabbitmq-server

If RabbitMQ was installed correctly, this will be output: ::


                      RabbitMQ 3.5.X. Copyright (C) 2007-2014 GoPivotal, Inc.
      ##  ##      Licensed under the MPL.  See http://www.rabbitmq.com/
      ##  ##
      ##########  Logs: /usr/local/var/log/rabbitmq/rabbit@localhost.log
      ######  ##        /usr/local/var/log/rabbitmq/rabbit@localhost-sasl.log
      ##########
                  Starting broker... completed with X plugins.

Running Sealtiel
----------------

See :ref:`Running Judgels Play applications <play_run>`.

To check whether Sealtiel can connect to RabbitMQ, choose the **Connection** menu in Sealtiel's left sidebar. The connection status will be shown.
