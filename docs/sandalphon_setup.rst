Setup
=====

Installing dependencies
-----------------------

As described in the previous section, Sandalphon depends on Jophiel, Sealtiel, and Gabriel. Make sure you have installed them.

Installing Sandalphon
---------------------

First, follow the :ref:`main Judgels setup <setup>` instructions if you haven't. This means that you should have installed Jophiel by running

.. sourcecode:: bash

    judgels pull sandalphon

and should have modified the common configuration keys in **conf/application.conf** and **conf/db.conf**.

Configuring Sandalphon
----------------------

First, let's configure the dependencies so that they can work with Sandalphon. During the configuration, we will set some configuration keys in Sandalphon's **conf/application.conf**.

#. Add Sandalphon as a client in Jophiel. Then, assign the client JID and secret values to Sandalphon's **jophiel.clientJid** and **jophiel.clientSecret**. Assign **jophiel.baseUrl** to Jophiel's base URL.
#. Add Sandalphon as a client in Sealtiel. Then, assign the client JID and secret values to Sandalphon's **sealtiel.clientJid** and **sealtiel.clientSecret**. Assign **sealtiel.baseUrl** to Sealtiel's base URL.
#. Add Gabriel as a client in Sealtiel. Then, assign the client JID and secret values to **Gabriel**'s **sealtiel.clientJid** and **sealtiel.clientSecret**. Assign **Gabriel**'s **sealtiel.baseUrl** to Sealtiel's base URL. Finally, assign the client JID to **Sandalphon**'s **sealtiel.gabrielClientJid**.
#. Add channels between Sandalphon and Gabriel, vice-versa, in Sealtiel.

Running Sandalphon
------------------

See :ref:`Running Judgels Play applications <play_run>`.

Configuring Gabriel
-------------------

Finally, add Gabriel as a Sandalphon's grader. This is required to allow Gabriel to fetch test cases from Sandalphon. It is worth noting that Gabriel connects directly to Sandalphon for fetching test cases, not via Sealtiel, since this should be a synchronous operation.

#. Open Sandalphon and click **Graders** menu on the left.
#. Click **Create New**.
#. Fill in these values:

   Name
       The grader name. For example: **Gabriel #1**.

#. Click **Create New**.

Assign the JID and secret you obtained to Gabriel's **sandalphon.clientJid** and **sandalphon.clientSecret**. Assign Gabriel's **sandalphon.baseUrl** to Sandalphon's base URL.

Adding initial admin
--------------------

Sandalphon has been successfully installed and configured. Now, we need to have a user with admin role.

#. Find your user JID in Jophiel.
#. Set the **roles** column to **user,admin** in the corresponding row (that contains your user JID) in the **sandalphon_user** table.
#. Log in to Sandalphon. Verify that you can view the **Clients** menu on the left.
