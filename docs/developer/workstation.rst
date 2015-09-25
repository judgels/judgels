Workstation setup
=================

This section will explain how developers set up their workstation to start working on Judgels development.

Codebase setup
--------------

Basically, you have to follow all instructions on :ref:`main Judgels setup <setup>`. Make sure you are able to run/start the Judgels applications you want to develop.

IDE setup
---------

Installing IDEA
***************

As Judgels are Java projects, you can develop Judgels using either Eclipse or IntelliJ IDEA. The Judgels maintainers recommend using IntelliJ IDEA. Download the Community edition or buy the Ultimate edition here: https://www.jetbrains.com/idea/download/ and install it.

Configuring IDEA
****************

#. Open IDEA. You will be presented with a series of dialog boxes:

   Complete Installation
       Choose **I do not have a previous version of IntelliJ IDEA or I do not want to import my settings.**

   IntelliJ IDEA License Activation
       Enter your license key (for Ultimate edition).

   License Agreement for IntelliJ IDEA
       Just accept it.

   Customize IDEA
       Choose **Skip All and Set Defaults**.

#. The main IDEA welcome screen will appear.

   .. image:: ../_static/idea-main.jpg
       :align: center

#. Click **Configure** (lower right corner) -> **Plugins**. Then, install **Scala** plugin.

IntelliJ IDEA has been successfully configured for opening Judgels projects.

Opening projects
****************

Suppose that you want to open Jophiel project.

#. From the welcome screen, click **Open**, then select **judgels-jophiel/build.sbt** file.

#. If the **Project SDK:** dropdown is empty, click **New...** -> **JDK** beside it. Then, select your Java 8 JDK home directory.

#. Click **OK**.

#. Make sure that the Jophiel project is opened correctly. In particular, make sure that all Jophiel project dependecies are present on the projects sidebar:

   .. image:: ../_static/idea-jophiel.jpg
       :align: center

#. You will notice that there are several warning boxes on the top-right corner:

   Spring Configuration Check
       Ignore.

   Framework detected
       Click **Configure**, and choose the only **persistence.xml** file.

   Unregistered VCS root detected
       Click **Add root**.

   These configuration are set only in the first time you open the project.

#. You can start developing.

Fixing reverse routes object error
**********************************

Soon, you will notice that Play's reverse routes object is not recognized by IDEA and will be highlighted as error. This is because the reverse routes object is a generated object. To fix the false error, right-click on these directories and choose **Mark Directory As** -> **Generated Sources Root**.

- judgels-jophiel/target/scala-<version>/src_managed/main
- judgels-jophiel/target/scala-<version>/twirl/main

If those directories are not present, compile/run/start the application first.

If you add new routing to the **conf/routes** file, it will not be recognized by IDEA until you compile/run/start the application (because the object has not been generated yet).
