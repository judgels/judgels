Setup
=====

Requirements
------------

Internally, Gabriel runs the contestants' programs in a sandbox: `Moe Contest Environment <http://www.ucw.cz/moe/>`_.

The following are necessary for install Gabriel and the Moe sandbox correctly.

- Linux. We have only tested Gabriel in Ubuntu 14.04, so we recommend you to use it. Note that Moe cannot be installed in Windows or OS X.
- `GCC <https://gcc.gnu.org/>`_.

Currently, programming languages that are supported are hardcoded to Gabriel: C, C++, Pascal, and Python 3. The following are necessary in order to use the languages:

- `GCC <https://gcc.gnu.org/>`_ >= 4.7 (for C/C++ language support)
- `Free Pascal <http://www.freepascal.org/>`_ (for Pascal language support)
- `Python <https://www.python.org/>`_ >= 3 (for Python 3 language support)

Installing Gabriel
------------------

First, follow the :ref:`main Judgels setup <setup>` if you haven't. Then, install Gabriel:

.. sourcecode:: bash

    judgels pull gabriel

This will clone Gabriel and Moe repositories to your Judgels base directory. Next, we will need to build the Moe sandbox program.

.. note::

    The next three sections (Moe, control groups, quota) can be skipped if you plan to install Moe later. Just comment out the keys **moe.{isolatePath, iwrapperPath}** in the configuration. Gabriel can still run but the contestants' programs will not be sandboxed (which is dangerous).

    This can be useful if you want to test Gabriel's connection with the other applications first.

Building Moe
------------

Run these commands inside **moe** repository.

.. sourcecode:: bash

    ./configure
    make

If the above commands finished correctly, then you will have two executable files:

- Isolate (**obj/isolate/isolate**): the main sandbox
- Interactive wrapper (**obj/eval/iwrapper**): wrapper for interactive problems

The above executables are necessary for Gabriel. If you cannot find them, that means your build failed. Resolve the errors and try again.

Installing control groups in Linux
----------------------------------

Isolate needs control groups feature in Linux for sandboxing contestants' programs. You need to install it:

.. sourcecode:: bash

    sudo apt-get install cgroup-bin

Then, we have to enable the memory and swap accounting in control groups. Follow these steps.

#. Add swap partition to your system if it does not have any. Note that a swap partition is **mandatory** for Isolate to function properly.
#. Open the **/etc/default/grub** using sudo privilege.
#. Modify the line containing **GRUB_CMDLINE_LINUX** as follows: ::

    GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"

#. Update the GRUB: ::

    sudo update-grub

#. Reboot the machine.
#. Verify that either the **/sys/fs/cgroup/memory/memory.memsw.limit_in_bytes** file or **/sys/fs/cgroup/memory/memory.soft_limit_in_bytes** file exists.

Enabling quota support in Linux
-------------------------------

Quota support must be enabled so that Isolate can limit the disk usage of contestants' programs.

#. Install the kernel that support quota. ::

    sudo apt-get install linux-image-extra-virtual

   If prompted, choose "keep the local version currently installed".

#. Edit **/etc/fstab** using sudo. Iinclude **usrquota** and **grpquota** in the desired partition: ::

    LABEL=cloudimg-rootfs   /    ext4   defaults,usrquota,grpquota  0 0

#. Reboot the machine.
#. Enable quota modules: ::

    sudo depmod -a
    sudo modprobe quota_v1
    sudo modprobe quota_v2
    sudo echo quota_v1 >> /etc/modules
    sudo echo quota_v2 >> /etc/modules

#. Install quota package: ::

    sudo apt-get install quota

#. Verify that quota support has been enabled. Go to **moe** directory and run: ::

    obj/isolate/isolate -b1 -q50000,50 -vvv --init

   This line must be output: ::

    Quota: Set block quota 50000 and inode quota 50

Configuring Gabriel
-------------------

Copy the default conf file by running this command in **gabriel** directory:

.. sourcecode:: bash

    cp src/main/resources/conf/application_default.conf src/main/resources/conf/application.conf

Then, fill the correct configuration values in **src/main/resources/conf/application.conf**. Some guides:

gabriel.baseDataDir
    The root directory for performing grading. For example: **/var/judgels/data/gabriel**.

sandalphon.{baseUrl, clientJid, clientSecret}
    Sandalphon's base URL and the required credentials to which this Gabriel connect for fetching test cases. This Gabriel must be registered in the Sandalphon, in **Graders** menu.

sealtiel.{baseUrl, clientJid, clientSecret}
    Sealtiel's base URL and the required credentials to which this Gabriel connect for fetching grading requests and sending grading results. This Gabriel must be registered in the Sealtiel as a client.

moe.{isolatePath, iwrapperPath}
    The absolute paths to Isolate and interactive wrapper executable files, respectively.

You can use more than one Gabriel for a single Sealtiel credentials. For example, you may want to use 5 machines each containing one Gabriel for running a contest in Uriel, to make grading process fast. Simply use identical Sealtiel configuration for all Gabriels.
