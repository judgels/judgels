# Change Logs

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
