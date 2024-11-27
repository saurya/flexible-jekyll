#!/bin/bash
# This only works if you've run
# git remote set-url github git@github.com:saurya/flexible-jekyll.git
git push github
# This assumes that origin is set to
# git remote origin saurya_saur@ssh.nyc1.nearlyfreespeech.net:home/private/git/BLOG.git
# Probably best to just pull this repo from NFSN rather than Github
git push origin
