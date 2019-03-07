# Project Title
Various implementations of a straw poll application to test buildpacks.

# Design
Straw poll implements a simple data model that allows any visitor to create a poll.

A poll consists of:
* An author email adress to send results
* A UTC starting datetime after which point voting is permitted. Defaults to now.
* A UTC ending datetime after which voting is disabled. Defaults to 24 hours from now.
* One or more poll options

A poll option consists of:
* 80-characters of text
* A positive integer number of votes for that options

## Design Docs
[Data Model](https://www.lucidchart.com/invitations/accept/8debf159-3226-4faa-a418-fe96dc15d2ea)

![Strawpoll Data Model](https://s3.amazonaws.com/PatchCloud/strawpoll_erd.png)

# Contributing
Anyone is free to build and PR a reference implementation or update an implemenation via a PR.

## Environment Setup
In any given subdirectory
```
./bin/bootstrap
./bin/setup
```

## Build the image
In any given subdirectory
```
./bin/build
```

## Running the Tests
In any given subdirectory
```
./bin/test
```

## Run the Server
In any given subdirectory
```
./bin/test
```

## Run the REPL
In any given subdirectory
```
./bin/console
```

## Contributors
[Patrick Wiseman](mailto: patrick.wiseman@deft.services)

## License

[MIT License](https://github.com/deftinc/strawpoll/blob/master/LICENSE)