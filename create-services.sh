#!/bin/bash

cf api $CF_API --skip-ssl-validation
cf target -o $CF_ORG -s $CF_SPACE
cf login -u $CF_USER -p $CF_PASS
cf cs p-service-registry standard $JRC_EUREKA
