#!/bin/bash
#if [ -f ../.env ]; then
#  source ../.env
#fi

# login validation
ibmcloud login --apikey $IBM_CLOUD_API_KEY -q

############# Transit gateways report ########################################

ibmcloud tg rrs $IBM_TRANSIT_GW_ID


