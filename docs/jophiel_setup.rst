Setup
=====

Installing Jophiel
------------------

First, follow the :ref:`main Judgels setup <setup>` instructions if you haven't. This means that you should have installed Jophiel by running

.. sourcecode:: bash

    judgels pull jophiel

and should have modified the common configuration keys in **conf/application.conf** and **conf/db.conf**.

Configuring Jophiel
-------------------

This section will cover the specific configuration keys for Jophiel.

jophiel.idToken.key.private
    An RSA private key for generating ID token required for OpenID Connect protocol. You can generate one using :code:`ssh-keygen` command. Make sure to select RSA as the algorithm.

noreply.{name, email}
    The name and email of "noreply" user for sending user account related emails.

smtp.{host, port, ssl, user, password}
    SMTP credentials configuration for sending user account related emails.

aws.avatar.s3.use
    Whether to use AWS as the storage for user avatars. If set to true, then the rest of the **aws.avatar.\*** keys below should be modified accordingly.

aws.avatar.s3.{bucket.name, bucket.regionId}
    The bucket name and bucket region ID for the S3 storage.

aws.avatar.cloudFront.baseUrl
    The base URL for CloudFront for the S3 storage. You must set up CloudFront.

aws.key.use
    Whether a pair of keys must be used for connecting to S3. For example, if the EC2 that hosts Jophiel has been associated to a role that has permission for connecting to S3, then this value should be false.

aws.key.{access, secret}
    If a pair of keys must be used, then these are the access and secret keys, respectively.

recaptcha.registration.use
    Whether to use reCAPTCHA for the registration form.

recaptcha.registration.key.{site, secret}
    If reCAPTCHA is used, then these are the site and secret keys, respectively.

Running Jophiel
---------------

See :ref:`Running Judgels Play applications <play_run>`.

Adding initial admin
--------------------

Jophiel has been successfully installed and configuring. Now, we need to have a user with admin role.

- Open Jophiel. You will be presented with a login screen. Choose Register.
- Register a user to be assigned as admin.
- Validate the user by following the validation email. If you don't have a valid SMTP server setup, you can do the validation manually by setting the **emailVerified** column to **1** in the corresponding row in the **jophiel_user_email** table.
- Manually assign this user as admin, by setting the **roles** column to **user,admin** in the corresponding row in the **jophiel_user** table.
- Log in to Jophiel. Verify that you can view the **Users** menu on the left.
