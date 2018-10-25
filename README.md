# AWS Cost Exporter

# Description

This export will query AWS Cost Explorer API search by a specific tag. This is usefull for know costs of a specific project. All you need to do is run the docker with the env variables. The script will discovery and return the amount for each value founded on specified tag.

# Authentication

The script use boto, so, if you already have aws/credentials file, the script will work's fine. You can use env variables also:

|Variable|Description|Default value|
|--------|-----------|-------------|
|PORT|Port for exporter listener| 9150|
|TAG_PROJECT|Tag to search|Scost|
|AWS_DEFAULT_REGION| Your AWS REGION|-|
|AWS_ACCESS_KEY_ID|Your AWS Key|-|
|AWS_SECRET_ACCESS_KEY|Your AWS SECRET KEY|-|

# Usage

./aws-cost-exporter.py

# Docker

docker run --restart always -d -p 9150:9150 -e TAG_PROJECT="YOUR_TAG_PROJECT" -e AWS_DEFAULT_REGION="XXXX" -e AWS_ACCESS_KEY_ID="XXXXXX" -e AWS_SECRET_ACCESS_KEY="XXXXX" alanwds/aws-cost-exporter:latest

# Prometheus config

######

PR, comments and enhancements are always welcome
