Manual
======

Adding clients
--------------

A Jophiel client is an application that uses Jophiel for authentication and authorization. To add a Jophiel client, perform these steps.

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

A Jophiel client has been successfully created with the corresponding client JID and client secret. The client can then connect to Jophiel using the JID and secret.

Managing users
--------------

You can create and edit users manually in the **Users** menu. Also, you can view the list of unverified users, and you can also resend the verification emails.

View applications as another user
---------------------------------

In each Judgels Play application that uses Jophiel, you can use the application as another user. Simply enter the username in the **Viewpoint** widget on the sidebar, and click **View As**. If you are finished, you can reset the view to yourself again.

This is useful for testing and investigating.

Managing activities
-------------------

You can view all activities of all users in all Jophiel clients in the **Activities** menu on the sidebar.

Managing autosuggestion items
-----------------------------

When a user is editing their profile, they will fill in institution, city, and province. The values can be autosuggested from existing values. You can view all values in **Autosuggestions** menu in the sidebar. In the future, duplicate values should be able to be merged.
