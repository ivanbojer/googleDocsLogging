#!/bin/bash

curl -v -X POST -H "Authorization: Bearer XXXXXXX" -H "Content-Type: application/json" -H "Accept: application/json" -d '{
  "appName": "temperatureloggerlambda",
  "displayName": "ivanbojertempLoggerconnector",
  "description": "AWS Lambda backend",
  "classifications": ["AUTOMATION"],
  "appType": "LAMBDA_SMART_APP",
  "lambdaSmartApp": {
    "functions": [
	"arn:aws:lambda:us-east-1:191542820218:function:temperatureLoggerEast:1"
    ]
  }
}' "https://api.smartthings.com/v1/apps"

