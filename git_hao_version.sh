#!/bin/bash
git describe --tags --dirty | sed 's/-g[a-z0-9]\{7\}//'
