#!/bin/bash

docker-compose -f docker-compose-setup.yml up downloadapp
docker-compose -f docker-compose-setup.yml up composer
#docker-compose -f docker-compose-setup.yml up oauthserver