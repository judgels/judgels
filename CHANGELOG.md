# Change Log

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
