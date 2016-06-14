#!/bin/bash

cf api $1 --skip-ssl-validation
cf target -o $4 -s $5
cf login -u $2 -p -$3
cf cs p-service-registry standard $6
