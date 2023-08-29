#!/usr/bin/env bash

project_name=$1
environment=${2-"mock"}
update_project="git pull && git pull origin master && npm install"

if [[ "$OSTYPE" == "darwin"* ]]; then #MAC OS
    open -a Terminal -n --args "zsh -c 'cd ~/Cora/front-ibanking-$project_name && npm run start'"

    if [[ $environment = "mock" ]]; then
        open -a Terminal -n --args "zsh -c 'cd ~/Cora/front-ibanking-shell && npm run start:mock -- $project_name'"
    elif [[ $environment = "stage" ]]; then
        open -a Terminal -n --args "zsh -c 'cd ~/Cora/front-ibanking-shell && npm run start -- $project_name'"
    fi
else #LINUX
    echo "Add script for Linux or Windows"
fi