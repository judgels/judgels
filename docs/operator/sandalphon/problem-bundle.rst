Managing bundle problems
========================

A bundle problem is a non-programming problem. Here is a sample bundle problem:

**BEGIN SAMPLE BUNDLE PROBLEM**

[**A**] Municipal Olympiad in Informatics

[**B**] Please answer all questions correctly!

[**C**]

*This is a description for numbers 1 through 2.*

We define f(N) = N * (N-1) * (N-2) * ... * 1.

[**D**] What is the value of f(5)?

a. 5
b. 20
c. 120

[**E**] What is the value of f(1)?

a. 1
b. 0
c. 2

**END SAMPLE BUNDLE PROBLEM**

Bundle problem components
-------------------------

As you can see, a bundle problem consists of these components:

Title
    The problem title. In the above sample problem, the problem title is "Municipal Olympiad in Informatics" (A).

Text
    The problem text, usually serves as the instruction for doing the questions. In the above sample problem, the problem text is "Please answer all questions correctly!".

Items
    Next, a bundle problem consists of one or more items. When adding an item to a bundle problem, you have to specify its **item slug (meta)**. This slug serves the same way as a problem slug, but for items.

    The above sample problems has three items: (C), (D), (E). Their slugs could be "factorial-desc", "factorial-1", and "factorial-2".

Bundle item types
-----------------

An item can be of one of the following types.

Item type: statement
********************

This item is just an HTML text that must stand on its own because it is required by one or more questions. Typically, this contains a background story or some definitions that are referred to by multiple questions below it. It is a passive item; you cannot "answer" this item. The above sample problem has a statement: (C).

Item type: multiple-choice question
***********************************

As the name says, this is a multiple-choice questions. A multiple-choice question has the following components:

Statement
    The question statement.

Score
    Points added for answering this question correctly. If the question is not answered, the score will be 0.

Penalty
    Points deducted for answering this question incorrectly.

Choices
    The answer choices. Each choice has **alias** (for example, "a", "b", etc.) and **content** (the answer itself). You can specify one or more choices as correct answer(s).

The above sample problem has two multiple-choice questions: (D) and (E).
