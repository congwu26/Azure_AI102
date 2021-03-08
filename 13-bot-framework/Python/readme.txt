This folder contains Python code

az ad app create --display-name "TimeBot" --password "Super$ecretPassw0rd" --available-to-other-tenants
{
  "acceptMappedClaims": null,
  "addIns": [],
  "allowGuestsSignIn": null,
  "allowPassthroughUsers": null,
  "appId": "ae2f21b0-7c4a-4b6e-99f6-b75ab5fa89a6",
  "appLogoUrl": null,
  "appPermissions": null,
  "appRoles": [],
  "applicationTemplateId": null,
  "availableToOtherTenants": true,
  "deletionTimestamp": null,
  "displayName": "TimeBot",
  "errorUrl": null,
  "groupMembershipClaims": null,
  "homepage": null,
  "identifierUris": [],
  "informationalUrls": {
    "marketing": null,
    "privacy": null,
    "support": null,
    "termsOfService": null
  },
  "isDeviceOnlyAuthSupported": null,
  "keyCredentials": [],
  "knownClientApplications": [],
  "logo@odata.mediaContentType": "application/json;odata=minimalmetadata; charset=utf-8",
  "logo@odata.mediaEditLink": "directoryObjects/ce46d9a5-3be4-4240-a9b3-1190ba00af7b/Microsoft.DirectoryServices.Application/logo",
  "logoUrl": null,
  "logoutUrl": null,
  "mainLogo@odata.mediaEditLink": "directoryObjects/ce46d9a5-3be4-4240-a9b3-1190ba00af7b/Microsoft.DirectoryServices.Application/mainLogo",
  "oauth2AllowIdTokenImplicitFlow": true,
  "oauth2AllowImplicitFlow": false,
  "oauth2AllowUrlPathMatching": false,
  "oauth2Permissions": [
    {
      "adminConsentDescription": "Allow the application to access TimeBot on behalf of the signed-in user.",
      "adminConsentDisplayName": "Access TimeBot",
      "id": "74724004-332f-4bf6-82d6-5ea701a99ff8",
      "isEnabled": true,
      "type": "User",
      "userConsentDescription": "Allow the application to access TimeBot on your behalf.",
      "userConsentDisplayName": "Access TimeBot",
      "value": "user_impersonation"
    }
  ],
  "oauth2RequirePostResponse": false,
  "objectId": "ce46d9a5-3be4-4240-a9b3-1190ba00af7b",
  "objectType": "Application",
  "odata.metadata": "https://graph.windows.net/ced12040-926c-45e6-b38a-ceb9c9796429/$metadata#directoryObjects/@Element",
  "odata.type": "Microsoft.DirectoryServices.Application",
  "optionalClaims": null,
  "orgRestrictions": [],
  "parentalControlSettings": {
    "countriesBlockedForMinors": [],
    "legalAgeGroupRule": "Allow"
  },
  "passwordCredentials": [
    {
      "additionalProperties": null,
      "customKeyIdentifier": null,
      "endDate": "2022-03-02T11:58:20.219356+00:00",
      "keyId": "ec22a140-c31a-4c78-821c-276f4d93bce2",
      "startDate": "2021-03-03T11:58:20.219356+00:00",
      "value": null
    }
  ],
  "preAuthorizedApplications": null,
  "publicClient": null,
  "publisherDomain": "congwuaioutlook.onmicrosoft.com",
  "recordConsentConditions": null,
  "replyUrls": [],
  "requiredResourceAccess": [],
  "samlMetadataUrl": null,
  "signInAudience": "AzureADMultipleOrgs",
  "tokenEncryptionKeyId": null,
  "wwwHomepage": null
}

az deployment group create --resource-group "BotService" --template-file "deploymenttemplates/template-with-preexisting-rg.json" --parameters appId="ae2f21b0-7c4a-4b6e-99f6-b75ab5fa89a6" appSecret="Super$ecretPassw0rd" botId="A_UNIQUE_BOT_ID" newWebAppName="CongBotWebApp" newAppServicePlanName="CongBotServicePlan" appServicePlanLocation="westeurope" --name "CongBotService"

{
  "id": "/subscriptions/24edc4db-7ac3-44a8-8a17-b3f94425eab1/resourceGroups/BotService/providers/Microsoft.Resources/deployments/CongBotService",
  "location": null,
  "name": "CongBotService",
  "properties": {
    "correlationId": "7332357e-5058-408f-a9c4-47a5adefdfb7",
    "debugSetting": null,
    "dependencies": [
      {
        "dependsOn": [
          {
            "id": "/subscriptions/24edc4db-7ac3-44a8-8a17-b3f94425eab1/resourceGroups/BotService/providers/Microsoft.Web/serverfarms/CongBotServicePlan",   
            "resourceGroup": "BotService",
            "resourceName": "CongBotServicePlan",
            "resourceType": "Microsoft.Web/serverfarms"
          }
        ],
        "id": "/subscriptions/24edc4db-7ac3-44a8-8a17-b3f94425eab1/resourceGroups/BotService/providers/Microsoft.Web/sites/CongBotWebApp",
        "resourceGroup": "BotService",
        "resourceName": "CongBotWebApp",
        "resourceType": "Microsoft.Web/sites"
      },
      {
        "dependsOn": [
          {
            "id": "/subscriptions/24edc4db-7ac3-44a8-8a17-b3f94425eab1/resourceGroups/BotService/providers/Microsoft.Web/sites/CongBotWebApp",
            "resourceGroup": "BotService",
            "resourceName": "CongBotWebApp",
            "resourceType": "Microsoft.Web/sites"
          }
        ],
        "id": "/subscriptions/24edc4db-7ac3-44a8-8a17-b3f94425eab1/resourceGroups/BotService/providers/Microsoft.Web/sites/CongBotWebApp/config/web",       
        "resourceGroup": "BotService",
        "resourceName": "CongBotWebApp/web",
        "resourceType": "Microsoft.Web/sites/config"
      },
      {
        "dependsOn": [
          {
            "id": "/subscriptions/24edc4db-7ac3-44a8-8a17-b3f94425eab1/resourceGroups/BotService/providers/Microsoft.Web/sites/CongBotWebApp",
            "resourceGroup": "BotService",
            "resourceName": "CongBotWebApp",
            "resourceType": "Microsoft.Web/sites"
          }
        ],
        "id": "/subscriptions/24edc4db-7ac3-44a8-8a17-b3f94425eab1/resourceGroups/BotService/providers/Microsoft.BotService/botServices/A_UNIQUE_BOT_ID",   
        "resourceGroup": "BotService",
        "resourceName": "A_UNIQUE_BOT_ID",
        "resourceType": "Microsoft.BotService/botServices"
      }
    ],
    "duration": "PT32.1977905S",
    "error": null,
    "mode": "Incremental",
    "onErrorDeployment": null,
    "outputResources": [
      {
        "id": "/subscriptions/24edc4db-7ac3-44a8-8a17-b3f94425eab1/resourceGroups/BotService/providers/Microsoft.BotService/botServices/A_UNIQUE_BOT_ID",   
        "resourceGroup": "BotService"
      },
      {
        "id": "/subscriptions/24edc4db-7ac3-44a8-8a17-b3f94425eab1/resourceGroups/BotService/providers/Microsoft.Web/serverfarms/CongBotServicePlan",       
        "resourceGroup": "BotService"
      },
      {
        "id": "/subscriptions/24edc4db-7ac3-44a8-8a17-b3f94425eab1/resourceGroups/BotService/providers/Microsoft.Web/sites/CongBotWebApp",
        "resourceGroup": "BotService"
      },
      {
        "id": "/subscriptions/24edc4db-7ac3-44a8-8a17-b3f94425eab1/resourceGroups/BotService/providers/Microsoft.Web/sites/CongBotWebApp/config/web",       
        "resourceGroup": "BotService"
      }
    ],
    "outputs": null,
    "parameters": {
      "appId": {
        "type": "String",
        "value": "ae2f21b0-7c4a-4b6e-99f6-b75ab5fa89a6"
      },
      "appSecret": {
        "type": "String",
        "value": "Super$ecretPassw0rd"
      },
      "appServicePlanLocation": {
        "type": "String",
        "value": "westeurope"
      },
      "botId": {
        "type": "String",
        "value": "A_UNIQUE_BOT_ID"
      },
      "botSku": {
        "type": "String",
        "value": "F0"
      },
      "existingAppServicePlan": {
        "type": "String",
        "value": ""
      },
      "newAppServicePlanName": {
        "type": "String",
        "value": "CongBotServicePlan"
      },
      "newAppServicePlanSku": {
        "type": "Object",
        "value": {
          "capacity": 1,
          "family": "S",
          "name": "S1",
          "size": "S1",
          "tier": "Standard"
        }
      },
      "newWebAppName": {
        "type": "String",
        "value": "CongBotWebApp"
      }
    },
    "parametersLink": null,
    "providers": [
      {
        "id": null,
        "namespace": "Microsoft.Web",
        "registrationPolicy": null,
        "registrationState": null,
        "resourceTypes": [
          {
            "aliases": null,
            "apiProfiles": null,
            "apiVersions": null,
            "capabilities": null,
            "defaultApiVersion": null,
            "locationMappings": null,
            "locations": [
              "westeurope"
            ],
            "properties": null,
            "resourceType": "serverfarms"
          },
          {
            "aliases": null,
            "apiProfiles": null,
            "apiVersions": null,
            "capabilities": null,
            "defaultApiVersion": null,
            "locationMappings": null,
            "locations": [
              "westeurope"
            ],
            "properties": null,
            "resourceType": "sites"
          },
          {
            "aliases": null,
            "apiProfiles": null,
            "apiVersions": null,
            "capabilities": null,
            "defaultApiVersion": null,
            "locationMappings": null,
            "locations": [
              "westeurope"
            ],
            "properties": null,
            "resourceType": "sites/config"
          }
        ]
      },
      {
        "id": null,
        "namespace": "Microsoft.BotService",
        "registrationPolicy": null,
        "registrationState": null,
        "resourceTypes": [
          {
            "aliases": null,
            "apiProfiles": null,
            "apiVersions": null,
            "capabilities": null,
            "defaultApiVersion": null,
            "locationMappings": null,
            "locations": [
              "global"
            ],
            "properties": null,
            "resourceType": "botServices"
          }
        ]
      }
    ],
    "provisioningState": "Succeeded",
    "templateHash": "12268371928726127800",
    "templateLink": null,
    "timestamp": "2021-03-03T12:08:00.571044+00:00",
    "validatedResources": null
  },
  "resourceGroup": "BotService",
  "tags": null,
  "type": "Microsoft.Resources/deployments"
}