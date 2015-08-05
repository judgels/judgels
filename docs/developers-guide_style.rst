Coding style
============

Here are some best practices that are recommended by Judgels maintainers.

Java
----

#. Use 4 spaces for indentation (not tabs).
#. Use curly braces in a block even it contains only one statement.
#. Put the opening curly brace on the right of the statement:

   .. sourcecode:: java

       if (condition) {
           //
       }
#. Do not use star import (:code:`import xxx.*;`). Import individual classes.
#. Mark classes as **final** whenever possible.
#. Use `Google Guava's immutable collection <https://github.com/google/guava/wiki/ImmutableCollectionsExplained>`_ whenever possible.
#. Make classes immutable whenever possible. Do not introduce setters unless really required. Initialize the class properties inside the constructor.
#. Prefer this:

   .. sourcecode:: java

       public void someFunction() {
           if (!requiredCondition1) {
               return failureMethod1();
           }

           if (!requiredCondition2) {
               return failureMethod2();
           }

           // main function code

       }

   to:

   .. sourcecode:: java

       public void someFunction() {
           if (requiredCondition1) {
               if (requiredCondition2) {

                   // main function code

               } else {
                   return failureMethod2();
               }
           } else {
               return failureMethod1();
           }
       }
#. Put only statements that can really throws exception, inside a try-block. Pull the ones that don't outside.
