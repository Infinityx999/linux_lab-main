#!/bin/bash
#Create folder structure

mkdir -p project/scripts project/docs project/data
#Add README.md to each folder

echo "# Scripts Folder" > project/scripts/README.md
echo "# Docs Folder" > project/docs/README.md
echo "# Data Folder" > project/data/README.md

echo "Starter Kit Ready!"