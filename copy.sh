#!/bin/bash

local_output_path=$HOME/landing/build

ECHO Copying files from $local_output_path

mkdir -p ./public/static
cp -R $local_output_path/docs/ ./public/
cp -R $local_output_path/static/fonts ./public/static/fonts
cp -R $local_output_path/static/javascripts ./public/static/javascripts
cp -R $local_output_path/static/images ./public/static/
cp -R $local_output_path/redirects.map ./redirects.map
