## rLab AVD

This repo contains some basic data models and playbooks to test and get started with Arista AVD. For further documentation on the AVD project, and addditional examples, see https://avd.sh/en/stable/

This example repo works with rLab-eos, https://github.com/networkRob/rLab-eos to build out a 4-way L3LS topology.

### Requirements
To run the AVD environment from within a VS Code container, you can leverage the `avd_run.sh` script. As a note the image will need to be built locally and the image location updated within the bash script. network topology on a container host machine, there are a few requirements and tested software versions that are known to work.

### Steps to build an updated AVD Coder Container

Clone and enter the following repo: https://github.com/arista-netdevops-community/docker-avd-vscode

Build the Image with Docker or Podman (Example below with Docker)

```
docker build -t avd-code:3.8 docker/.

```

Next update the `avd_run.sh` with the following: (Current script leverages Podman to run the container)

```
docker run --name rlab-avd -it -d \
    -e AVD_MODE=demo \
    -e AVD_GIT_USER="$(git config --get user.name)" \
    -e AVD_GIT_EMAIL="$(git config --get user.email)" \
    -v ${PWD}:/home/avd/rLab:rw \
    -p 8080:8080 \
    avd-code:3.8
```

#### Distribution Testing
| Distro    | Version | Runtimes        |
| --------- | ------- | --------------- |
| Fedora    | >=34    | Docker, Podman  |

#### Container Runtimes
| Package   | Version   |
| --------- | --------- |
| Docker    | >= 20.10  |
| Podman    | >= 3.4    |

#### Linux Packages
- Docker or Podman
