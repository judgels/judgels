Resources
=========

Resource types
--------------

There are two types of resources that are supported by Sandalphon: problems and lessons. The resources can be used by **Sandalphon clients**, for example, Uriel and Jerahmeel.

.. toctree::
   :maxdepth: 1

   sandalphon_manual_resources_problems

Adding Sandalphon clients
-------------------------

Before an application can use Sandalphon resources, it must be registered as a Sandalphon client.

#. Open Sandalphon and click **Clients** menu on the left.
#. Click **Create New**.
#. Fill in these values:

   Name
       The client name. For example: **Uriel #1**.

#. Click **Create New**.

A Sandalphon client has been successfully created with the corresponding client JID and client secret. The client can then connect to Sandalphon using the JID and secret.

Sharing resources to Sandalphon clients
---------------------------------------

If a Sandalphon client wants to use a resource from Sandalphon, perform these steps.

#. Enter the corresponding resource (problem/lesson).
#. Click the **Clients** tab.
#. Choose the client, and then click **Create New**.
#. View the client. You will see the resource JID and resource secret, for that particular client.

The client can then fetch the resource from Sandalphon, using the provided resource JID and resource secret.
