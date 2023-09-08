#!/bin/bash

version=$(echo "$(cat version.txt)" | cut -d ':' -f 2 | tr -d ' ')

IFS='.' read -ra version_parts <<< "$version"

((version_parts[${#version_parts[@]}-1]++))

new_version=$(IFS='.'; echo "${version_parts[*]}")

echo "wilderness95/phpcontactapp: $new_version" > version.txt