#!/bin/bash

cf api $CF_API --skip-ssl-validation
cf login -u $CF_USER -p $CF_PASS
cf target -o $CF_ORG -s $CF_SPACE
cf cs p-service-registry standard $JRC_EUREKA
