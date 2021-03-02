@echo off

rem Set values for your Language Understanding app
set app_id=00e5602d-cecb-461e-9d83-bf2baa6ee5ba
set endpoint=https://ai102languageunderstanding.cognitiveservices.azure.com/
set key=4224ac424e6e4e8097c66a4a22b30cea

rem Get parameter and encode spaces for URL
set input=%1
set query=%input: =+%

rem Use cURL to call the REST API
curl -X GET "%endpoint%/luis/prediction/v3.0/apps/%app_id%/slots/production/predict?subscription-key=%key%&log=true&query=%query%"