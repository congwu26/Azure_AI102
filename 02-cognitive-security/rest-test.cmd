curl -X POST "https://ai102cognitiveservice.cognitiveservices.azure.com/text/analytics/v3.0/languages?" -H "Content-Type: application/json" -H "Ocp-Apim-Subscription-Key: de477ac07a4b4edca19efb359c50067d" --data-ascii "{'documents':[{'id':1,'text':'hello'}]}"