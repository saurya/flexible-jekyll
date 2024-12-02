#!/bin/bash
TODAYS_DATE=$(date "+%Y-%m-%d %H:%M:%S %z")

FILE_NAME=$TODAYS_DATE"-"$(echo $@ | sed -e 's/ /-/g')".markdown"
echo $FILE_NAME
echo "---
layout: post
title: $@
date: $TODAYS_DATE 10:00:21 -0800
description: 
img: # Add image post (optional)
fig-caption: # Add figcaption (optional)
tags: [Writing]
---" > ./_posts/$FILE_NAME

