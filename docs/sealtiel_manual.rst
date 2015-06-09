Manual
======

Adding Sealtiel clients
-----------------------

A Sealtiel client is an application that uses Sealtiel as a bridge for sending and receiving asynchronous messages. Since Sealtiel is currently only used for sending and receiving grading requests and responses, there are only two kinds of applications that use Sealtiel: Gabriel and the applications that can request grading (Sandalphon, Uriel, and Jerahmeel).

To add a Sealtiel client, perform these steps.

#. Open Sealtiel and click **Clients** menu on the left.
#. Click **Create New**.
#. Fill in these values:

   Name
       The client name. For example: **Uriel #2**.

#. Click **Create New**.

A Sealtiel client has been successfully created with the corresponding client JID and client secret. The client can then connect to Sealtiel using the JID and secret.

Adding channels
---------------

For client A to be able to send message to client B, client B must registered as client A's "**channel**". Think of channel as a directed edge between clients.

To add channels to a Sealtiel client, perform these steps.

#. Open Sealtiel and click **Clients** menu on the left.
#. Click the Enter icon on the rightmost column of the corresponding client row.
#. Add the client name(s) as new channels.

For example, when setting up Sandalphon and Gabriel to work together, you must:

- Add Sandalphon and Gabriel as Sealtiel clients.
- Add Gabriel as Sandalphon's channel.
- Add Sandalphon as Gabriel's channel.

Watching messages
-----------------

You can watch the message flow between clients in the **Queues** tab on the management web interface.
