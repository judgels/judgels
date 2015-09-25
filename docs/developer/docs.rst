Judgels documentation guide
===========================

This section is intended for developers that want to contribute in writing Judgels documentation.

Introduction
------------

All Judgels documentation is stored in **judgels** repository, in the directory **docs**. The documentation is published on `Read the Docs <https://readthedocs.org>`_, here: http://judgels.readthedocs.org. The documentation will be updated every time there is a commit pushed to **judgels** repository.

The documentation is written using `Sphinx <http://sphinx-doc.org>`_. To use Sphinx, we need Python. To simplify Sphinx installation, we will use **virtualenv**.

Setup
-----

#. Install Python.

   On Ubuntu:

   .. sourcecode:: bash

        sudo apt-get install python

   On OS X (via **Homebrew**):

   .. sourcecode:: bash

        brew install python

#. Install **pip**.

   On Ubuntu:

   .. sourcecode:: bash

        sudo apt-get install python-pip

   On OS X: automatically installed along with Python.

#. Install **virtualenv** via **pip**:

   .. sourcecode:: bash

        pip install virtualenv

#. Go to main documentation directory.

   .. sourcecode:: bash

       cd $JUDGELS_BASE_DIR/judgels/docs

#. Create virtual environment.

   .. sourcecode:: bash

       virtualenv env

#. Activate the virtual environment.

   .. sourcecode:: bash

       source env/bin/activate

#. Install Sphinx.

   .. sourcecode:: bash

       pip install sphinx

Sphinx will be ready in the directory.

Writing documentation
---------------------

First, try to build the documentation. Run

.. sourcecode:: bash

    make html

If everything goes well, a file **$JUDGELS_BASE_DIR/judgels/docs/_build/html/index.html** will be built. Open it on your browser to see the documentation.

The documentation is written in **reStructuredText (RST)** syntax. The root documentation source file is **docs/index.rst**. Please consult `reStructuredText Primer <http://sphinx-doc.org/rest.html>`_ for more details on the syntax.
