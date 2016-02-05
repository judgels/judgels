# Change Logs

## [0.8.0] - 2016-02-06

### Overall

#### Added
- Add Redis support for DAOs (experimental).
- Add banner support.
- Add Google Analytics support.
- Add SEO support.
- Add guest viewable contents (can see pages without login).
- Incorporate Checkstyle support during build.
- Add api repository that contains Java API for connecting to other Judgels apps.

#### Changed
- Update Play Framework to 2.4.6.
- Rename CRUD controller actions to be consistent and similar to RoR (edit/update, etc.)
- Restruture packages a lot; now based on features, not services/models/controllers etc.
- Restructure layouting system. See HtmlTemplate and AbstractJudgelsController.
- Start using multiple Guice modules for pluggable components like banner and SEO.
- Extract common functionalities to standalone JudgelsModule that is used by all Judgels apps.
- Rename HTTP filter to JudgelsFilters.
- Start migrating from Global.java to singletons that are eagerly loaded on start.
- Restructure and rename some sections in application.conf.

#### Removed
- Activator in each repository. Now users download Activator themselves via script.
- Unnecessary @ in routes.
- Regex in routes. Replaced by intercepting bad request.
- Duplicate font assets in each repository.
- Application loader in configuration.
- Global settings (Global.java) was supposed to be completely removed. However, it turns out that currently there is no way to load different persistence unit during dependency injection. Different persistence unit is required for doing data migration.

#### Fixed
- Strange keyboard not working bug after stopping (Ctrl-C) running app that was started using Python terminal command line utility.

### Jophiel

#### Added
- Support session removal if invalid by checking if users still are logged in every certain interval.
- Activity log suppots that can be sent by Jophiel client apps.
- Download user data for admins.
- User additional info for user profile like T-shirt size etc.

#### Fixed
- Various bug fixes.

### Sandalphon

#### Added
- Slug as identifier for problems and lessons.
- Ckeditor for lessons.
- Multiline support for multiple choice items.
- Add sandalphon-blackbox-adapters that contains views for grading engines.

#### Changed
- Set maximum file upload in grading and media to 512 MB.


#### Fixed
- Wrong numbering in viewing bundle choices when not in page one.
- Sort bundle answers based on numbers.
- Various bug fixes.


### Sealtiel

#### Changed
- In database, change list of acquaintances into a many-to-many table.

#### Removed
- sealtiel-commons repository. Mostly all API functionality are moved to api repository.

### Uriel

#### Added
- Contest features organized into modules.
- Support tie-breaking for equal points in IOI-style contests.
- Show contest times in contest list.
- Alert if contest is being paused.
- Add first accepted marks in ICPC scoreboard.
- In submission context, contestJid -> containerJid.
- Add problem name refresh feature.
- Use threads for each contest scoreboard updater.

#### Changed
- Beautify contest module descriptions.
- New contest is LIMITED by default.

### Fixed
- Various bug fixes.


#### Removed
- Problem secrets when viewing problem lists as supervisors.

### Jerahmeel

#### Added
- Show progress on courses.
- Show points on chapters.
- Add various statistics as global widgets.
- Add problem leaderboard widget.
- Add submissions statistics for admins.
- Disabled status for problems and lessons in courses.
- Use caches from various user statistic scores.
- Add Archives and Problem Sets menu.
- Add "getOnlyFirstResult" to user item DAO, as a resolution for race condition when updating user item.
- Add regrade all functionality in submission view.

#### Changed
- Rename session -> chapter.
- "Completeable" concept now becomes courses and archives+problemsets. So, learning courses and contest archives are basically two different concepts now.

### Raguel

#### Added
- Implement forum.

### Gabriel

#### Added
- Add gabriel-blackbox repository that contains blackbox grading engines.
- Add option to bypass testdata fetch if Sandalphon is on the same machine.


#### Fixed
- Fix deadlock after failed fetching test data from Sandalphon.
- Fix result not sent when internal error.



## [0.7.0] - 2015-08-06

### Overall

#### Added
- Add sidebar containing links to other Judgels apps.

#### Changed
- Move GitHub organization to https://github.com/judgels.
- Restructure packages organization (part 2).
- Update Play Framework to 2.4.2.
- Manage DI in Judgels apps as specified in JSR 330.
- Support database migration.

#### Fixed
- Don't aggregate in activator dist.

### Jophiel

#### Added
- Add welcome page containing links to Judgels apps.

#### Fixed
- Various bug fixes.

### Sandalphon

#### Changed
- Make bundle statement non-scrollable.

#### Fixed
- Fix cannot view statement on Firefox.
- Various minor bugfixes.

### Sealtiel

#### Fixed
- Fix encoding in in messages.

### Uriel

#### Added
- Support ICPC-style contest.

#### Changed
- Change some configuration from table to JSON.

### Jerahmeel

#### Changed
- Sort sessions/courses/problems/lessons by alias.
- Rename session to chapter, just in messages (not in code).

#### Fixed
- Various minor bugfixes.

## [0.6.0] - 2015-06-30

### Overall

#### Added
- Introduce judgels-commons repository, that hosts basic dependencies for all applications.
- For each Judgels Play application X, introduce judgels-X-commons, that hosts business models.
- Integrate to Travis CI.
- Add Javadocs builder that collect from all repositories.
- Show times in relative.

#### Changed
- Rewrite Judgels terminal script in Python. Have better repo dependency management.
- Restructure package organization, by introducing and renaming packages.
- Standardize HTTP request calls, using Apache HTTP libraries.
- Use Typesafe Activator for all repositories.
- Use @Transactional correctly; should be in each method.

#### Fixed
- Make breadcrumbs responsive if there are too many items.
- Fix unresolved joda-time dependecy that sometimes happen when no internet connection present

#### Removed
- Don't use git submodules anymore.
- Don't use judgels-frontend-commons anymore; it is split into respective app's commons.

### Jophiel

#### Added
- Add simple unit tests.
- Add simple integration tests.
- Add recaptcha for registration.
- Add password strength meter for registration.
- Add salts for passwords.

#### Fixed
- Add missing www-authenticate header to http basic authentication response.
- Fix strange guest users created in tables.

### Sandalphon

#### Added
- Add bundle problem type.

### Sealtiel

#### Changed
- Upgrade RabbitMQ to version 3.5.x.

### Uriel

#### Added
- Unregister from public contests.

#### Fixed
- Contest scoreboard is now responsive; looks good for contests with many problems.
- Fix cannot show image from Sandalphon if the filename contains spaces.

### Jerahmeel

#### Added
- Introduce first working version of Jerahmeel.

## [0.5.0] - 2015-05-15

### Overall

#### Added
- Add Google analytics.
- Add show full screen and hide sidebar button.
- Can add user to applications even when they have not entered the applications.

#### Fixed
- Prevent JVM from exiting if Akka fails.
- Fix file inside folder zipped in Windows not extracted correctly when opened in Linux.

### Jophiel

#### Fixed
- Fix cannot create default avatar when starting Jophiel.

### Sandalphon

#### Fixed
- Fix discard user clone bug in Windows.

### Sealtiel

#### Fixed
- Fix JSON parse exception in clients when Sealtiel is shut down.

### Uriel

#### Added
- Implement simple scoreboard fetch REST API for external viewer.
- Implement contest password for onsite contests.

#### Fixed
- Simplify look-and-feel for contests list.
- Fix cannot create default team avatar when starting Uriel.

### Gabriel

#### Added
- Show internal error grading messages in submission view.

#### Fixed
- Add timeout to all connections to Sandalphon.


## [0.4.0] - 2015-05-08

### Overall

#### Added
- Make the top left logo clickable and pointing to homepage.
- Make admin can view applications as any user.
- Add regex for restricting entity IDs to valid integers in routes.
- Add guard in controllers (as page not found) if they try to load non-existing entities.
- Applications check to Jophiel whether the session is still valid for current user.
- Support HTTPS routing.

#### Fixed
- Tidy up Global.java configuration schema.

### Jophiel

#### Added
- Show list of unverified users and add option to resend activation emails.
- Implement manually activate users.

#### Fixed
- Fix error message when a not verified user tries to log in.
- Change time expiry access token into 5 minutes.

### Sandalphon

#### Added
- Add support for closing and not using problems in contests.

#### Fixed
- Fix bug when updating working copy when there are already other's commits.
- Use additionalNote as search parameter in problems list.

### Uriel

#### Added
- In scoreboard, differentiate between 0 points and no submissions at all.
- Use local file system as backup for AWS S3 for submission files.
- Add functionality to provide/upload files in contest.
- Implement "critical" contests: contests in which submission slot is always present,
  to avoid statement that is not showing.
- Implement adding team members and team coaches by text files.

#### Fixed
- Sort contest lists based on contest start times descending.
- After clicking tabs, supervisors should be redirected to supervisor subtabs if applicable.
- Fix filtering in contestant submissions list.
- Fix error message when adding team contestants that are already team members.
- Fix adding user as coach that is already a coach.

### Gabriel

#### Added
- Implement interactive grading engine.
- Add command-line option to specify the number of desired threads manually.

### Michael

#### Added
- Implement adding applications.
- Implement adding machines.
- Implement adding dashboards.
- Implement adding operations.


## [0.3.0] - 2015-04-23

### Overall

#### Added
- Improve build.sbt file in each project.
- Add script to release new judgels version.
- Show used version on running applications.

#### Fixed
- Standardize content headers, breadcrumbs, and other contents.
- Mark most properties in Class as final.

### Jophiel

#### Fixed
- Fix activity log pagination.
- Export private key in id token usage to configuration.
- Change access token expiration from 1 day into just 5 minutes.

### Uriel

#### Added
- Add submission tester to test load.

#### Fixed
- Fix CSRF token.

### Sealtiel

#### Fixed
- Fix large message handling.


## [0.2.1] - 2015-04-14

### Overall

#### Added
- Add https support in the production.

#### Fixed
- Standardize content headers, breadcrumbs, and other contents.
- Mark most properties in Class as final.

### Jophiel

#### Added
- Users' avatar can be uploaded into AWS S3 and rendered from AWS S3.
- Default user avatar will always be available.

### Uriel

#### Added
- Teams' avatar can be uploaded into AWS S3 and rendered from AWS S3.
- Default team avatar will always be available.

#### Fixed
- Fix most of contest team bugs.
- Fix most of contest virtual bugs.
- Fix permissions of start contest, enter contest, view contest and other contest related permissions.

### Sandalphon

#### Fixed
- Fix links sended to user activity log.
- Fix upload test data file as zip.

### Sealtiel

#### Fixed
- Sealtiel username and password are moved into configuration.

### Gabriel

#### Fixed
- Grading are now working.
- Temporary files used for grading are removed.


## [0.2.0] - 2015-04-07

### Overall

#### Changed
- New cleaner layout theme.
- Splitting controllers into multiple parts based on tabs.

#### Added
- Implement abstract file system provider. Can support AWS S3 if implemented.
- Server time now shows the time zone.

### Jophiel

#### Added
- User activity logs. Applications can push their activities to Jophiel.

### Sandalphon

#### Added
- Multiple languages in problem statements.
- Problem versioning using Git.
- Partners in problems. Partners can be given permissions to view/update problems.

### Uriel

#### Added
- Other contests are blocked when there is a running contest.
- Alert when entering virtual contest.
