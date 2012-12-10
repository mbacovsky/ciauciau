#!/bin/sh


KAT_PREFIX=''
KAT_HOME='/root/katello/'
KAT_SRC_HOME='/root/katello/src/'
KAT_CLI_HOME='/root/katello/cli/'

CP_SRC_HOME='/root/candlepin/proxy/'
PULP_SRC_HOME='/root/pulp/'
FOREMAN_SRC_HOME='/root/foreman/'

KAT_SERVER='localhost'
KAT_PORT='3000'
KAT_USER='admin'
KAT_PASSWORD='admin'
KAT_PROTOCOL='http'
KAT_HOST="$KAT_PROTOCOL://$KAT_SERVER:$KAT_PORT"
KAT_API_URL="$KAT_HOST/katello/api"

CP_PORT='8443'
CP_USER='admin'
CP_PASSWORD='admin'
CP_HOST="https://$KAT_SERVER:$CP_PORT"
CP_API_URL="$CP_HOST/candlepin"

PULP_USER='admin'
PULP_PASSWORD='admin'
PULP_HOST="https://$KAT_SERVER"
PULP_API_URL="https://$KAT_SERVER/pulp/api"

FOREMAN_PORT='3001'
FOREMAN_PROTOCOL='http'
FOREMAN_USER='admin'
FOREMAN_PASSWORD='changeme'

FOREMAN_HOST="$FOREMAN_PROTOCOL://$KAT_SERVER:$FOREMAN_PORT"
FOREMAN_API_URL="$FOREMAN_HOST/api"
