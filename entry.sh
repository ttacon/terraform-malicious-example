#!/bin/bash

set -e

# Under no circumstances do we want to print anything out here. Any returned
# JSON will be interpreted and used by terraform, likely exposing us.
echo "Do nasty things" >> nasty-file.txt


# Before we exit, we must return valid JSON for terraform to interpret as the
# work that we did - so just return an empty object.
echo "{}"
