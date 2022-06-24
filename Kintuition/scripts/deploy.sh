#!/bin/bash

# PARAMETER OPTIONS /////////////////////////////////////////////////////////////////////////
DEPLOYMENT_TYPE_OPTIONS=(
    "local"
    "dev"
    "stage"
    "prod"
)
ROLE_SELECTOR_OPTIONS=(
    "bootstrap"
    "cluster"
    "app"
)


# READ / VALIDATE DEPLOYMENT_TYPE //////////////////////////////////////////////////////////////////
read -p "Enter a deployment type(local, dev, stage, prod): " DEPLOYMENT_TYPE

while :
do
    if exists_in_list "$DEPLOYMENT_TYPE_OPTIONS"
    " " DEPLOYMENT_TYPE; then
        break
    else
        read -p "Enter a VALID deployment type(local, dev, stage, prod): " DEPLOYMENT_TYPE
        continue
done


# READ / VALIDATE ROLE_SELECTOR //////////////////////////////////////////////////////////////////
read -p "Enter a role(bootstrap, cluster, app): " ROLE_SELECTOR

while :
do
    if exists_in_list "$ROLE_SELECTOR_OPTIONS"
    " " ROLE_SELECTOR; then
        break
    else
        read -p "Enter a VALID role(bootstrap, cluster, app): " ROLE_SELECTOR
        continue
done


# RUN PLAYBOOK ///////////////////////////////////////////////////////////////////////////
ansible-playbook ../scripts/playbook.yml --extra-vars \
    "deployment_type=$DEPLOYMENT_TYPE role_selector=$ROLE_SELECTOR"