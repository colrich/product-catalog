#!/bin/bash

cf api $cf-api --skip-ssl-validation
cf target -o $cf-org -s $cf-space
cf login -u $cf-user -p $cf-pass
cf cs p-service-registry standard $jrc-eureka
