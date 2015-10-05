Setup
=====

Installing dependencies
-----------------------

Uriel depends on other Judgels applications to run correctly. Here is the dependency diagram.

.. image:: ../../_static/uriel-deps.png
    :align: center

An arrow pointing from A to B means that A depends on B. The dependencies between applications are described as follows.

A. Uriel connects to Jophiel for user authentication and authorization.
B. Uriel connects to Sandalphon for fetching resources (problems/lessons).
C. Uriel connects to Sealtiel for sending grading requests and polling grading responses.
D. Gabriel connects to Sealtiel for polling grading requests and sending grading responses.
E. Gabriel connects to Sandalphon for fetching test cases.

Note that the Gabriel used for grading submissions from Uriel can be the same Gabriel used for grading submissions from Sandalphon.

Installing Uriel
----------------

First, follow the :ref:`main Judgels setup <setup>` instructions if you haven't. This means that you should have installed Uriel by running

.. sourcecode:: bash

    judgels pull uriel

and should have modified the common configuration keys in **conf/application.conf** and **conf/db.conf**.

Configuring Uriel
-----------------

First, let's configure the dependencies so that they can work with Uriel. During the configuration, we will set some configuration keys in Uriel's **conf/application.conf**.

#. Add Uriel as a client in Jophiel. Then, assign the client JID and secret values to Uriel's **jophiel.clientJid** and **jophiel.clientSecret**. Assign **jophiel.baseUrl** to Jophiel's base URL.
#. Add Uriel as a client in Sealtiel. Then, assign the client JID and secret values to Uriel's **sealtiel.clientJid** and **sealtiel.clientSecret**. Assign **sealtiel.baseUrl** to Sealtiel's base URL.
#. Add Uriel as a client in Sandalphon. Then, assign the client JID and secret values to Uriel's **sandalphon.clientJid** and **sandalphon.clientSecret**. Assign **sandalphon.baseUrl** to Sandalphon's base URL.
#. Add Gabriel as a client in Sealtiel. Then, assign the client JID and secret values to **Gabriel**'s **sealtiel.clientJid** and **sealtiel.clientSecret**. Assign **Gabriel**'s **sealtiel.baseUrl** to Sealtiel's base URL. Finally, assign the client JID to **Uriel**'s **sealtiel.gabrielClientJid**.
#. Add acquaintances between Uriel and Gabriel, vice-versa, in Sealtiel.

The rest of configuration keys are:

aws.{teamAvatar, submission, file}.s3.use
    Whether to use AWS as the storage for {team avatars, submission files, contest files}. If set to true, then the rest of the **aws.{teamAvatar, submission, file}.\*** keys below should be modified accordingly.

aws.{teamAvatar, submission, file}.s3.bucket.name
    The bucket name for the S3 storage.

aws.{teamAvatar, submission, file}.s3.bucket.regionId
    The bucket region ID for the S3 storage. If not present, **aws.global.s3.bucket.regionId** will be used.

aws.teamAvatar.cloudFront.baseUrl
    The base URL for CloudFront for the S3 storage. You must set up CloudFront.

aws.{teamAvatar, submission, file}.key.use
    Whether a pair of keys must be used for connecting to S3. For example, if the EC2 that hosts Jophiel has been associated to a role that has permission for connecting to S3, then this value should be false. If not present, then **aws.global.key.use** will be used.

aws.{teamAvatar, submission, file}.key.{access, secret}
    If a pair of keys must be used, then these are the access and secret keys, respectively. If not present, then **aws.global.key.{access, secret}** will be used.

Running Uriel
-------------

See :ref:`Running Judgels Play applications <play_run>`.

Adding initial admin
--------------------

Uriel has been successfully installed and configured. Now, we need to have a user with admin role.

#. Find your user JID in Jophiel.
#. Set the **roles** column to **user,admin** in the corresponding row (that contains your user JID) in the **uriel_user** table.
#. Re-log in to Uriel. Verify that you can view the **Users** menu on the left.
