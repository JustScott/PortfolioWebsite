#!/bin/bash

docker stop WebsiteAPI

docker rm WebsiteAPI

docker rmi website_api

docker build -t website_api .

docker run -p 80:5000 -d --name WebsiteAPI website_api
