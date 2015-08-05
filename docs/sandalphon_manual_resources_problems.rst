Problems
========

Problem types
-------------

Currently, there are two types of problems that are supported in Sandalphon: programming problems and bundle problems.

.. toctree::
   :maxdepth: 1

   sandalphon_manual_resources_problems_programming
   sandalphon_manual_resources_problems_bundle

Creating problems
-----------------

To create a new problem in Sandalphon, perform these steps:

#. Open Sandalphon and click **Problems** on the left.
#. Click **Create New**.
#. Fill in these values:

   Type
       The problem type.

   Name
       The problem name.

   Additional Note
       Any additional note. For example, problem tags, contests that have used the problems, etc.

   Initial Language
       The initial language of the problem statement. Later, you can add other languages.
#. Click **Create New**.

Managing statements
-------------------

After you created a problem, you can view and update the statement(s).

Media
    You can insert images to the statement. Upload the image as media file in the **Media** subtab, and then insert it to the statement by adding an image with this URL: **render/<imageFilename>**. Currently only images are supported.

Languages
    You can have multiple languages of the statements. You can add new languages in the **Languages** subtab. **Default language** is the default language shown to the user. You can also disable a language. When viewing problem statement, users can switch languages.

    Currently, problem names cannot be translated.

Managing partners
-----------------

You can share the privilege to modify the problem you created to other users (called "partners"). Add the username of the user you want to share, in the **Partners** subtab. You can specify the permissions you want to grant.

Managing versions
-----------------

Every changes to a problem will be tracked in a version control. Every time you finished making a change, you have to **commit** your change. When you commit, one of the following events will happen:

- The commit succeeded. Your changes will be recorded.
- New commits have been made since you started editing. You will be prompted to update your local working copy. Click **Update Working Copy**. One of the following events will happen:

  - Update working copy succeeded. You can continue committing.
  - Update working copy failed. Your changes conflicts with the previous commits. Currently, there is no solution. You have to remember/save your changes somewhere and then click **Discard Local Changes** to discard your changes and load the latest version.

Note that you can also update working copy or discard local changes any time during your modification.
