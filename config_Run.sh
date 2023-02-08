#!/bin/bash
echo "The runner is being configured";
./config.sh --url $GIT_URL --token $GIT_TOKEN ;
./run.sh;
