#!/bin/bash
instaloader --post-filter="date_utc >= datetime($1)" $2
mkdir $2/raw
mv $2/* $2/raw
mkdir $2/posts
mv $2/raw/*UTC_[0-9]* $2/posts 
mv $2/raw/*UTC.jpg $2/posts 
mkdir $2/copyright
watermarker/watermarker $2/posts/ $2/copyright/ --wm-text "@$2"
