Manual
======

User roles
----------

There are two roles in Jophiel:

User
    A normal user.

Admin
    An administrator. Can do anything, for example, user CRUD and Jophiel client CRUD.

Adding Jophiel clients
----------------------

A Jophiel client is an application that uses Jophiel for authentication and authorization. To add a Jophiel client, perform these steps.

- Open Jophiel and click **Clients** menu on the left.
- Click **Create New**.
- Fill in these values:

    Client Name
        The client name. For example: **Sandalphon #1**.

    Application Type
        Choose **Web Server**.

    Redirect URIs
        Fill **<client base URL>/verify**. For example: **http://localhost:9002/verify**.

    Scopes
        For the current version, choose **OPENID** and **OFFLINE_ACCESS**.
- Click **Create New**.

A Jophiel client has been successfully created with the corresponding client JID and client secret. The client can then connect to Jophiel using the JID and secret.
