#!/bin/bash
echo GIT HAO VERSION?
git describe --tags --dirty | sed 's/-g[a-z0-9]\{7\}//'
