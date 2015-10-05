Manual
======

Adding clients
--------------

A Sandalphon client is an application that uses Jophiel for authentication and authorization. To add a Jophiel client, perform these steps.

#. Open Jophiel and click **Clients** menu on the left.
#. Click **Create New**.
#. Fill in these values:

   Client Name
       The client name. For example: **Sandalphon #1**.

   Application Type
       Choose **Web Server**.

   Redirect URIs
       Fill **<client base URL>/verify**. For example: **http://localhost:9002/verify**.

   Scopes
       For the current version, choose **OPENID** and **OFFLINE_ACCESS**.
#. Click **Create New**.

A Sandalphon client has been successfully created with the corresponding client JID and client secret. The client can then connect to Sandalphon using the JID and secret.

Adding Gabriel
--------------

Finally, add Gabriel as a Sandalphon's grader. This is required to allow Gabriel to fetch test cases from Sandalphon. It is worth noting that Gabriel connects directly to Sandalphon for fetching test cases, not via Sealtiel, since this should be a synchronous operation.

#. Open Sandalphon and click **Graders** menu on the left.
#. Click **Create New**.
#. Fill in these values:

   Name
       The grader name. For example: **Gabriel #1**.

#. Click **Create New**.

Assign the JID and secret you obtained to Gabriel's **sandalphon.clientJid** and **sandalphon.clientSecret**. Assign Gabriel's **sandalphon.baseUrl** to Sandalphon's base URL.
