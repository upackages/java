# Copyright (c) 2022 joshu
# 
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

#!/bin/bash

render() {
sedStr="
  s!%%JAVA_VERSION%%!$version!g;
  s!%%MAINTAINER%%!$maintainer!g;
  s!%%REPOSITORY%%!$repository!g;
"

sed -r "$sedStr" $1
}

maintainer=(hello@unately.com)
versions=(17)
repository=(https://github.com/upackages/java)

for version in ${versions[*]}; do
  mkdir $version
  render Dockerfile.template > $version/Dockerfile
done