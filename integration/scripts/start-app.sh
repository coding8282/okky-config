#!/usr/bin/env bash

nohup java -jar \
/home/ec2-user/okky-config-1.0.0.jar \
--spring.cloud.config.server.git.uri=$git_uri \
--spring.cloud.config.server.git.username=$git_username \
--spring.cloud.config.server.git.password=$git_password \
--spring.profiles.active=prod > /dev/null 2> /dev/null < /dev/null &