#!/bin/bash

function install_scala() {
    curl -sSL -o /tmp/scala.deb http://apt.typesafe.com/repo-deb-build-0002.deb
    dpkg -i /tmp/scala.deb
    rm -rf /tmp/scala.deb

    apt-get update
    apt-get install typesafe-stack

    # Force dependencies to download
    as_user sbt -batch
}