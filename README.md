# Lerna Docker

A simple tool for easily building and publishing [Docker](https://www.docker.com/) images inside [Lerna](https://lerna.js.org/) monorepos.

Features:
* Building Docker images for all packages that have a Dockerfile.
* Pushing Docker images to Docker hub based.
* Automatic Docker hub authentication for running in CI environments.

## Requirements

* [Bash](https://www.gnu.org/software/bash/) _(Installed by default on UNIX machines)_
* [Docker](https://www.docker.com/)
* [A Lerna project](https://lerna.js.org/)
* [npm](https://www.npmjs.com/)

## Install

### Automatically

This will automatically clone this repo into `$HOME/.lerna-docker` (_requires [git](https://git-scm.com/)_),
and adds this tool to your `$PATH`.

```bash
$ sh -c "`curl -fsSl https://raw.githubusercontent.com/rubensworks/lerna-docker/master/install.sh`"
```

If you want to uninstall later, just remove `$HOME/.lerna-docker` and the `$PATH` modification in `~/.bash_profile`.

### Manually

First, clone this repo somewhere:

```bash
$ git clone git@github.com:rubensworks/lerna-docker.git
```

Secondly, install the required npm packages:

```
npm install -g verdaccio@5.29.2 npm-cli-adduser npm-cli-login
```

Lastly, add the `/bin` folder to your `$PATH`.
For example, by adding the following to your `~/.bash_profile`

```bash
export PATH="/path/to/lerna-docker/bin:$PATH"
```

## Usage

All actions allow a custom version tag to be passed.
If no version is given, then either a version based on `$TRAVIS_TAG` or `"DEV"` will be assigned.

### Building

Build all Dockerfiles that can be found in `packages/*`:

```bash
$ lerna-docker my-docker-organization build [version-tag]
```

### Pushing

Pushing all images to Docker hub based on the Dockerfiles that can be found in `packages/*`:

```bash
$ lerna-docker my-docker-organization push [version-tag]
```

If you want to push in a CI environment,
you will have to log in to a Docker Hub account,
which can be done by setting the (secret) environment variables `DOCKER_USERNAME` and `DOCKER_PASSWORD`.

## License
This code is copyrighted by [Ghent University – imec](http://idlab.ugent.be/)
and released under the [MIT license](http://opensource.org/licenses/MIT).
