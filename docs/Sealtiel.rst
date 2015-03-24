Message Oriented Middleware (Sealtiel)
**************************************

Configuration
=============

Install `RabbitMQ <http://www.rabbitmq.com/>`_ on your Operating System.

First copy default configuration in "conf" directory:
- application_default.conf -> application.conf
- db_default.conf -> db.conf

Create a database for storing Sealtiel data. Then change the configuration of Sealtiel to point to the database in "conf/db.conf" file.

Sealtiel depends on judgels-play-commons to run, make sure judgels-play-commons is on the same level of directory with Sealtiel.

Running Sealtiel
================

You can run Sealtiel by using "activator start" command. By default, it will listen on port 9000. You can access it via web browser using url "http://localhost:9000". 

Message Queue
=============

Message delivery in Sealtiel utilize message queue. Sealtiel uses RabbitMQ to contains the queue. In Judgels, Sealtiel acts as router to connect components with graders. Components and graders in Judgels have to be registered as client of Sealtiel to utilize the message delivery.

Polling
=======

In message delivery, Sealtiel acts as passive components. Sealtiel only accept incoming message delivery request from Client and put it into queue. In order for Sealtiel's client to get the message, they must actively poll message from Sealtiel.

After polling the message from Sealtiel, the client need to send ack to notify if the message has been processed. If the message hasn't been processed after some times, the message will be requeued. Client can extend the acknowledgement time limit using Sealtiel's API.

Grading Distribution
====================

Message queue in Sealtiel can be used for grading distribution purposes. Currently, each client is associated with one queue. Client can send message to each other through the queue identity. To distribute grading, all grader instance can be registered as one client and obtains one queue. All grading request message can be sent to graders' client queue. Since each grader poll from the queue every interval time, load balancer is created naturally.

Future Target
=============

Currently all grader are registered as one client. There need to be implementation of a group of client (channel) to register each grader as one client and support more routing options.

