#!/usr/bin/env bash

set -e

sudo wget -c http://services.gradle.org/distributions/gradle-${gradle_version}-all.zip
sudoln -s /opt/gradle-${gradle_version} /opt/gradle
sudoprintf "export GRADLE_HOME=/opt/gradle\nexport PATH=\$PATH:\$GRADLE_HOME/bin\n" > /etc/profile.d/gradle.sh
sudo source /etc/profile.d/gradle.sh
