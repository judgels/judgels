# Judgment Angels

[![Documentation Status](https://readthedocs.org/projects/judgels/badge/?version=latest)](https://readthedocs.org/projects/judgels)
[![Slack Status](https://slackin-judgels.herokuapp.com/badge.svg)](https://slackin-judgels.herokuapp.com/)

## Introduction

**Judgels** (**Judgment Angels**) is a set of modular applications for educational programming purposes. It was initiated by [Ikatan Alumni Tim Olimpiade Komputer Indonesia](http://blog.ia-toki.org/) (English: Indonesia Computing Olympiad Alumni Association). It is designed to support:

- competitive programming contests,
- competitive programming problem archive,
- academic programming classes,
- programming training courses,
- etc.

### Applications

Judgels consists of several applications that work with each other. Each application has a codename after a Greek archangel name.

At the moment, there are seven applications in Judgels. Each of them has their own repository.

1. **Jophiel** (Single Sign-On) : authenticates and authorizes users in other applications.
1. **Sandalphon** (Repository Gate): stores programming problems and lessons.
1. **Sealtiel** (Message Gate): provides message queues and transmissions between applications.
1. **Uriel** (Competition Gate): holds programming contests.
1. **Michael** (Alchemy Gate): monitors machines used for other applications.
1. **Jerahmeel** (Training Gate): holds programming training and provides problem archive.
1. **Gabriel** (Grader): grades programming submissions.

The applications are designed to be modular. For example, multiple instances of Uriel can share the same Sandalphon and Jophiel instance. They are also designed to be distributed: the required application instances do not have to be installed in one single machine. We can install one application in one machine and some others in other machines.

Judgels applications are still being heavily developed and do not have any stable releases yet. Anyone can try at their own risks.

### License

Judgels is licensed using GNU GPL version 2.

### Documentation

For installation instruction, please visit [http://judgels.readthedocs.org](http://judgels.readthedocs.org).

### Maintainers

Judgels repositories are currently being maintained by:

- [@dragoon20](https://github.com/dragoon20) (Jordan Fernando)
- [@fushar](https://github.com/fushar) (Ashar Fuadi)
