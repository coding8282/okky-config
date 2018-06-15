#!/usr/bin/env bash

git_uri=$(aws ssm get-parameter --name /okky/okky-config/git_uri --region ap-northeast-2 --with-decryption --query Parameter.Value --output text)
git_username=$(aws ssm get-parameter --name /okky/okky-config/git_username --region ap-northeast-2 --with-decryption --query Parameter.Value --output text)
git_password=$(aws ssm get-parameter --name /okky/okky-config/git_password --region ap-northeast-2 --with-decryption --query Parameter.Value --output text)

nohup java -jar \
/home/ec2-user/okky-config-1.0.0.jar \
--spring.cloud.config.server.git.uri="$git_uri" \
--spring.cloud.config.server.git.username="$git_username" \
--spring.cloud.config.server.git.password="$git_password" \
> /dev/null 2> /dev/null < /dev/null &