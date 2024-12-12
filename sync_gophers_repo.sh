#!/bin/bash

UPSTREAM_REPO="https://github.com/MariaLetta/free-gophers-pack.git"

echo "Adding upstream repository..."
git remote add upstream "$UPSTREAM_REPO"

echo "Fetching updates from upstream..."
git fetch upstream
git checkout master
git merge upstream/master

echo "Pushing updates to forked repository..."
git push origin master

echo "Repository synchronization completed successfully."
