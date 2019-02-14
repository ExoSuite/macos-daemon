#!/usr/bin/env bash

if [[ $(ps -ef | grep -v grep | grep atlassian-bamboo-agent | wc -l) -le 0 ]]
then

# start bamboo agent
java -jar /Users/exosuite/atlassian-bamboo-agent-installer.jar https://bamboo.dev.exosuite.fr/agentServer/
echo "atlassian-bamboo-agent-installer.jar Agent Started"

else
 echo "atlassian-bamboo-agent-installer.jar Agent already Started"
fi