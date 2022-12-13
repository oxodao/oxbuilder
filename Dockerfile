FROM node:19-bullseye

# Installing golang
RUN curl -fsSL https://go.dev/dl/go1.19.4.linux-amd64.tar.gz -o go.tar.gz && tar -C /usr/local -xzf go.tar.gz && ln -s /usr/local/go/bin/go /usr/bin/go && rm go.tar.gz

# Installing the crosscompiler (For RPi images)
RUN apt-get update && apt-get -yq install gcc-aarch64-linux-gnu && apt-get -yq clean autoclean && apt-get -yq autoremove --yes && rm -rf /var/lib/{apt,dpkg,cache,log}/
