# Python Server SDK v0.24.0

## gametelemetry Service

### What's Changed
---
`GET` /game-telemetry/v1/admin/namespaces/{namespace}/events Get Events  
    Parameters

        Modify endTime //End time of data to be queried. Default: Current time in UTC.
        Modify startTime //Start time of data to be queried. Default: Current time in UTC minus 1 day.

## iam Service

### What's Changed
---
`DELETE` /iam/v3/admin/inputValidations/{field} Admin Reset Input Validations  
    Parameters

        field Notes Name of the input validation field to reset: username, displayName, or password change into Name of the input validation field to reset: email, username, displayName, or password
        Modify field //Name of the input validation field to reset: email, username, displayName, or password
`GET` /iam/v3/admin/namespaces/{namespace}/users/search Search User  
    Parameters

        platformId Notes Platform Id that want to be searched, supported values: steam, steamopenid, psn, xbox, epicgames, stadia, nintendo, oculus, aws cognito, facebook, google, discord, twitch, or snapchat change into Platform Id that want to be searched, supported values: steam, steamopenid, psn, xbox, epicgames, stadia, nintendo, oculus, aws cognito, facebook, google, discord, twitch, snapchat or amazon
        Modify platformId //Platform Id that want to be searched, supported values: steam, steamopenid, psn, xbox, epicgames, stadia, nintendo, oculus, aws cognito, facebook, google, discord, twitch, snapchat or amazon

## matchmaking Service

### What's Changed
---
`POST` /matchmaking/namespaces/{namespace}/channels Create a channel  
    Parameters

        Insert body.rule_set.alliance.combination.role_flexing_enable
        Insert body.rule_set.alliance.combination.role_flexing_player
        Insert body.rule_set.alliance.combination.role_flexing_second
        Insert body.rule_set.alliance_flexing_rule.combination.role_flexing_enable
        Insert body.rule_set.alliance_flexing_rule.combination.role_flexing_player
        Insert body.rule_set.alliance_flexing_rule.combination.role_flexing_second
`GET` /matchmaking/namespaces/{namespace}/channels Get all channels  
    Return Type

        Insert data.ruleset.alliance.combination.role_flexing_enable
        Insert data.ruleset.alliance.combination.role_flexing_player
        Insert data.ruleset.alliance.combination.role_flexing_second
        Insert data.ruleset.alliance_flexing_rule.combination.role_flexing_enable
        Insert data.ruleset.alliance_flexing_rule.combination.role_flexing_player
        Insert data.ruleset.alliance_flexing_rule.combination.role_flexing_second
`POST` /matchmaking/namespaces/{namespace}/rebalance Rebalance Matchmaking based on MMR  
    Return Type

        Insert matching_allies.matching_parties.ticket_id
`POST` /matchmaking/namespaces/{namespace}/sessions Queue joinable session  
    Parameters

        Insert body.ticket_id
        Insert body.matching_allies.matching_parties.ticket_id
`GET` /matchmaking/namespaces/{namespace}/sessions/{matchID}/status Query joinable session status  
    Return Type

        Insert ticket_id
        Insert matching_allies.matching_parties.ticket_id
`GET` /matchmaking/v1/admin/namespaces/{namespace}/channels/all/sessions/bulk Bulk get sessions  
    Return Type

        Insert ticket_id
        Insert matching_allies.matching_parties.ticket_id
`GET` /matchmaking/v1/admin/namespaces/{namespace}/channels/export Export channels  
    Return Type

        Insert ruleSet.alliance.combination.role_flexing_enable
        Insert ruleSet.alliance.combination.role_flexing_player
        Insert ruleSet.alliance.combination.role_flexing_second
        Insert ruleSet.alliance_flexing_rule.combination.role_flexing_enable
        Insert ruleSet.alliance_flexing_rule.combination.role_flexing_player
        Insert ruleSet.alliance_flexing_rule.combination.role_flexing_second
`PATCH` /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName} Update a channel  
    Parameters

        Insert body.ruleSet.alliance.combination.role_flexing_enable
        Insert body.ruleSet.alliance.combination.role_flexing_player
        Insert body.ruleSet.alliance.combination.role_flexing_second
        Insert body.ruleSet.alliance_flexing_rule.combination.role_flexing_enable
        Insert body.ruleSet.alliance_flexing_rule.combination.role_flexing_player
        Insert body.ruleSet.alliance_flexing_rule.combination.role_flexing_second
`GET` /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName} Get single channel  
    Return Type

        Insert ruleSet.alliance.combination.role_flexing_enable
        Insert ruleSet.alliance.combination.role_flexing_player
        Insert ruleSet.alliance.combination.role_flexing_second
        Insert ruleSet.alliance_flexing_rule.combination.role_flexing_enable
        Insert ruleSet.alliance_flexing_rule.combination.role_flexing_player
        Insert ruleSet.alliance_flexing_rule.combination.role_flexing_second
`GET` /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/parties Get all party in a channel  
    Return Type

        Insert ticket_id
`GET` /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions Get all channel sessions  
    Return Type

        Insert ticket_id
        Insert matching_allies.matching_parties.ticket_id
`GET` /matchmaking/v1/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed Get session history detailed  
    Return Type

        Insert matching_allies.matching_parties.ticket_id
`GET` /matchmaking/v1/public/namespaces/{namespace}/channels Get all channels  
    Return Type

        Insert ruleSet.alliance.combination.role_flexing_enable
        Insert ruleSet.alliance.combination.role_flexing_player
        Insert ruleSet.alliance.combination.role_flexing_second
        Insert ruleSet.alliance_flexing_rule.combination.role_flexing_enable
        Insert ruleSet.alliance_flexing_rule.combination.role_flexing_player
        Insert ruleSet.alliance_flexing_rule.combination.role_flexing_second
`GET` /matchmaking/v1/public/namespaces/{namespace}/channels/{channelName} Get single channel  
    Return Type

        Insert ruleSet.alliance.combination.role_flexing_enable
        Insert ruleSet.alliance.combination.role_flexing_player
        Insert ruleSet.alliance.combination.role_flexing_second
        Insert ruleSet.alliance_flexing_rule.combination.role_flexing_enable
        Insert ruleSet.alliance_flexing_rule.combination.role_flexing_player
        Insert ruleSet.alliance_flexing_rule.combination.role_flexing_second

## platform Service

### What's Changed
---
`GET` /platform/admin/namespaces/{namespace}/items/byCriteria Query items by criteria  
    Parameters

        Add includeSubCategoryItem //default is false, only available when search by category path, it will return all of the items(includes sub category path) under this category path
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/payment Pay with user wallet by currency code and client platform  
    Return Type

        Insert status //status
        Modify walletStatus
`GET` /platform/public/namespaces/{namespace}/items/byCriteria Query items by criteria  
    Parameters

        Add includeSubCategoryItem //default is false, only available when search by category path, it will return all of the items(includes sub category path) under this category path
`GET` /platform/public/namespaces/{namespace}/users/me/wallets/{currencyCode} Get my wallet by currency code and namespace  
    Return Type

        Insert status //status
        Modify walletStatus
`GET` /platform/public/namespaces/{namespace}/users/{userId}/wallets/{currencyCode} Get a wallet by currency code  
    Return Type

        Insert status //status
        Modify walletStatus
`GET` /platform/v2/admin/namespaces/{namespace}/items/byCriteria Query items by criteria  
    Parameters

        Add includeSubCategoryItem //default is false, only available when search by category path, it will return all of the items(includes sub category path) under this category path
        Modify sortBy //default is name:asc,displayOrder:asc, allow values: [name, name:asc, name:desc, createdAt, createdAt:asc, createdAt:desc, updatedAt, updatedAt:asc, updatedAt:desc, displayOrder, displayOrder:asc, displayOrder:desc],and support sort group, eg: sortBy=name:asc,createdAt:desc. Make sure to always use more than one sort if the first sort is not an unique valuefor example, if you wish to sort by displayOrder, make sure to include other sort such as name or createdAt after the first sort, eg: displayOrder:asc,name:asc

## sessionbrowser Service

### What's New
---
* `GET` /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search Search sessions
* `GET` /sessionbrowser/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed Get session history detailed

### What's Changed
---
`GET` /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/matchmaking-game Get all active session for matchmaking game, this return only dedicated session type  
    Return Type

        Insert sessions.match.matching_allies.matching_parties.match_attributes
`GET` /sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID} Admin get specified session by session ID  
    Return Type

        Insert match.matching_allies.matching_parties.match_attributes
`POST` /sessionbrowser/namespaces/{namespace}/gamesession Register a new game session  
    Return Type

        Insert match.matching_allies.matching_parties.match_attributes
`GET` /sessionbrowser/namespaces/{namespace}/gamesession Query to available game session  
    Return Type

        Insert sessions.match.matching_allies.matching_parties.match_attributes
`GET` /sessionbrowser/namespaces/{namespace}/gamesession/bulk Query game sessions by comma separated user ids  
    Return Type

        Insert data.match.matching_allies.matching_parties.match_attributes
`GET` /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID} Get specified session by session ID  
    Return Type

        Insert match.matching_allies.matching_parties.match_attributes
`PUT` /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID} Update session  
    Parameters

        Delete body.game_current_player
    Return Type

        Insert match.matching_allies.matching_parties.match_attributes
`DELETE` /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID} Delete specified session by session ID  
    Return Type

        Insert match.matching_allies.matching_parties.match_attributes
`POST` /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/join Join specified session by session ID  
    Return Type

        Insert match.matching_allies.matching_parties.match_attributes
`DELETE` /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/localds Only use for local DS entry, will error when calling non local DS entry  
    Return Type

        Insert match.matching_allies.matching_parties.match_attributes
`PUT` /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/settings Update settings  
    Return Type

        Insert match.matching_allies.matching_parties.match_attributes

# Python Server SDK v0.23.0

## achievement Service

## Version  to 
---
### What's New
---

### What's Deprecated
---
* `DELETE` /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/reset Reset an achievement

### What's Changed
---

## basic Service

## Version 2.1.2 to 2.1.2
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## cloudsave Service

## Version 3.1.4 to 3.1.3
---
### What's New
---

### What's Deprecated
---
* `POST` /cloudsave/v1/admin/namespaces/{namespace}/users/bulk/records/size Bulk get player records size
* `GET` /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/size Get player record size

### What's Changed
---

## dslogmanager Service

## Version 2.4.2 to 2.4.2
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## dsmc Service

## Version 3.6.1 to 3.5.0
---
### What's New
---

### What's Deprecated
---
* `GET` /dsmcontroller/namespaces/{namespace}/images/limit DS Image Limit for Client

### What's Changed
---
`GET` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments Get All Deployments  
    Return Type

        Delete deployments.unlimited
`GET` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment} Get Deployment  
    Return Type

        Delete unlimited
`PATCH` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment} Update deployment  
    Parameters

        Delete body.unlimited
    Return Type

        Delete unlimited
`POST` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment} Create deployment  
    Parameters

        Delete body.unlimited
`DELETE` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region} Delete Region Override  
    Return Type

        Delete unlimited
`PATCH` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region} Update region override  
    Parameters

        Delete body.unlimited
    Return Type

        Delete unlimited
`POST` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region} Create region override  
    Parameters

        Delete body.unlimited
`POST` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/version/{version} Create deployment override  
    Parameters

        Delete body.unlimited
`DELETE` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version} Delete Deployment Override  
    Return Type

        Delete unlimited
`PATCH` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version} Update deployment override  
    Parameters

        Delete body.unlimited
    Return Type

        Delete unlimited
`DELETE` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region} Delete region override for deployment override  
    Return Type

        Delete unlimited
`PATCH` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region} Update region override for deployment override  
    Parameters

        Delete body.unlimited
    Return Type

        Delete unlimited
`POST` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region} Create region override for deployment override  
    Parameters

        Delete body.unlimited
`GET` /dsmcontroller/admin/namespaces/{namespace}/images/limit DS Image Limit  
    Return Type

        Delete data.non_persistent_image_used_in_deployment_number
`GET` /dsmcontroller/admin/v1/namespaces/{namespace}/configs/export export DSM Controller configuration for a namespace  
    Return Type

        Delete deployments.unlimited

## eventlog Service

## Version  to 
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## gametelemetry Service

## Version 1.9.0 to 1.8.1
---
### What's New
---

### What's Deprecated
---

### What's Changed
---
`GET` /game-telemetry/v1/admin/namespaces/{namespace}/events Get Events  
    Parameters

        Modify endTime //End time of data to be queried. Default: Current time in UTC.
        Modify startTime //Start time of data to be queried. Default: Current time in UTC minus 1 day.

## gdpr Service

## Version 1.14.9 to 1.14.8
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## group Service

## Version 2.11.7 to 2.11.7
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## iam Service

## Version 5.16.0 to 5.15.0
---
### What's New
---

### What's Deprecated
---
* `PATCH` /iam/v3/admin/namespaces/{namespace}/bans/users/disabled Bulk unban user
* `PUT` /iam/v3/admin/namespaces/{namespace}/users/{userId}/password Update User Password
* `POST` /iam/v3/namespace/{namespace}/token/request Request code to get game token
* `GET` /iam/v3/public/namespaces/{namespace}/agerestrictions/countries/{countryCode} Public get age restriction by country code
* `POST` /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/force Force linking user's account with platform
* `GET` /iam/v3/public/namespaces/{namespace}/users/{userId}/information Get user's information v3
* `GET` /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice Get User Justice Platform Accounts
* `POST` /iam/v3/public/users/me/verify_link/request Send verification link to user, this link will point to '/iam/v3/public/users/verify_link/verify'
* `GET` /iam/v3/public/users/verify_link/verify Verify user email by the verification link code
* `POST` /iam/v3/token/exchange Generate game token by code
* `POST` /iam/v3/admin/namespaces/{namespace}/bans/users Bulk ban user
* `GET` /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} Get user mapping

### What's Changed
---
`GET` /iam/v2/public/namespaces/{namespace}/countries/{countryCode}/agerestrictions Public get age restriction by country code  
    Return Type

        Delete Namespace
`GET` /iam/v3/admin/inputValidations Admin Get Input Validations  
    Return Type

        Delete data.validation.blockedWord
`PUT` /iam/v3/admin/inputValidations Admin Update Input Validations  
    Parameters

        Delete body.validation.blockedWord
`POST` /iam/v3/admin/namespaces/{namespace}/users/{userId}/headless/code/verify Verify or consume verification code.   
    Parameters

        Modify body.validateOnly
`POST` /iam/v3/authenticateWithLink Authentication with platform link  
    Return Type

        Modify display_name
        Modify refresh_expires_in //present if it is user token
        Modify refresh_token //present if it is user token
        Modify user_id //present if it is user token
        Modify xuid
`POST` /iam/v3/headless/token Create headless account and response token  
    Return Type

        Modify display_name
        Modify refresh_expires_in //present if it is user token
        Modify refresh_token //present if it is user token
        Modify user_id //present if it is user token
        Modify xuid
`POST` /iam/v3/oauth/mfa/verify Verify 2FA code  
    Return Type

        Modify display_name
        Modify refresh_expires_in //present if it is user token
        Modify refresh_token //present if it is user token
        Modify user_id //present if it is user token
        Modify xuid
`POST` /iam/v3/oauth/token OAuth2 access token generation endpoint  
    Return Type

        Modify display_name
        Modify refresh_expires_in //present if it is user token
        Modify refresh_token //present if it is user token
        Modify user_id //present if it is user token
        Modify xuid
`POST` /iam/v3/oauth/verify OAuth2 token verification API  
    Return Type

        Modify display_name
        Modify refresh_expires_in //present if it is user token
        Modify refresh_token //present if it is user token
        Modify user_id //present if it is user token
        Modify xuid
`GET` /iam/v3/public/inputValidations Public Get Input Validations  
    Return Type

        Delete data.validation.blockedWord
`POST` /iam/v3/public/namespaces/{namespace}/users/me/code/verify Validate or consume verification code sent to user  
    Parameters

        Modify body.languageTag
        Modify body.validateOnly
`POST` /iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify Verify or consume verification code.  
    Parameters

        Modify body.validateOnly
`POST` /iam/v4/admin/users/me/mfa/backupCode Generate backup codes  
    Return Type

        Modify invalidCodes
`GET` /iam/v4/admin/users/me/mfa/backupCode Get backup codes  
    Return Type

        Modify invalidCodes
`POST` /iam/v4/admin/users/me/mfa/backupCode/enable Enable 2FA backup codes  
    Return Type

        Modify invalidCodes
`POST` /iam/v4/public/namespaces/{namespace}/users Create User  
    Parameters

        Modify body.code
        Modify body.displayName
        Modify body.password
        Modify body.passwordMD5Sum
        Modify body.reachMinimumAge
`POST` /iam/v4/public/namespaces/{namespace}/users/me/headless/code/verify Upgrade headless account and automatically verified the email address if it is succeeded  
    Parameters

        Modify body.reachMinimumAge
        Modify body.validateOnly
`POST` /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode Generate backup codes  
    Return Type

        Modify invalidCodes
`GET` /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode Get backup codes  
    Return Type

        Modify invalidCodes
`POST` /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/enable Enable 2FA backup codes  
    Return Type

        Modify invalidCodes

## leaderboard Service

## Version 2.15.8 to 2.15.7
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## legal Service

## Version 1.22.6 to 1.22.5
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## lobby Service

## Version staging to staging
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## matchmaking Service

## Version 2.15.7 to 2.15.6
---
### What's New
---

### What's Deprecated
---

### What's Changed
---
`POST` /matchmaking/namespaces/{namespace}/channels Create a channel  
    Parameters

        Delete body.rule_set.alliance.combination
        Delete body.rule_set.alliance_flexing_rule.combination
`GET` /matchmaking/namespaces/{namespace}/channels Get all channels  
    Return Type

        Delete data.ruleset.alliance.combination
        Delete data.ruleset.alliance_flexing_rule.combination
`GET` /matchmaking/v1/admin/namespaces/{namespace}/channels/export Export channels  
    Return Type

        Delete ruleSet.alliance.combination
        Delete ruleSet.alliance_flexing_rule.combination
`PATCH` /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName} Update a channel  
    Parameters

        Delete body.ruleSet.alliance.combination
        Delete body.ruleSet.alliance_flexing_rule.combination
`GET` /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName} Get single channel  
    Return Type

        Delete ruleSet.alliance.combination
        Delete ruleSet.alliance_flexing_rule.combination
`GET` /matchmaking/v1/public/namespaces/{namespace}/channels Get all channels  
    Return Type

        Delete ruleSet.alliance.combination
        Delete ruleSet.alliance_flexing_rule.combination
`GET` /matchmaking/v1/public/namespaces/{namespace}/channels/{channelName} Get single channel  
    Return Type

        Delete ruleSet.alliance.combination
        Delete ruleSet.alliance_flexing_rule.combination

## platform Service

## Version 4.14.0 to 4.13.0
---
### What's New
---

### What's Deprecated
---
* `GET` /platform/admin/items/configs Get all item type configs
* `POST` /platform/admin/items/configs Create an Item Type Config
* `GET` /platform/admin/items/configs/search Get an item type config
* `GET` /platform/admin/items/configs/{id} Get an item type config
* `PUT` /platform/admin/items/configs/{id} Update an Item Type Config
* `DELETE` /platform/admin/items/configs/{id} Delete an item type config
* `GET` /platform/admin/namespaces/{namespace}/invoice/details.csv Download invoice details
* `GET` /platform/admin/namespaces/{namespace}/invoice/summary Generate invoice summary
* `GET` /platform/v2/admin/namespaces/{namespace}/items/byCriteria Query items by criteria

### What's Changed
---
`POST` /platform/admin/fulfillment/scripts/tests/eval Test eval fulfillment script  
    Parameters

        Modify body.context.item.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/entitlements Query entitlements  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/entitlements/{entitlementId} Get entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/fulfillment/history Query fulfillment histories  
    Return Type

        Delete data.extensionFulfillmentSummaries //extension fulfillment granted
        Modify data.fulfillItems.itemType //item type
`POST` /platform/admin/namespaces/{namespace}/items Create an Item  
    Parameters

        Modify body.itemType //Item Type
`PUT` /platform/admin/namespaces/{namespace}/items Sync an in game item  
    Return Type

        Modify itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/byAppId Get item by appId  
    Return Type

        Modify itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/byCriteria Query items by criteria  
    Parameters

        Modify itemType
    Return Type

        Modify data.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/byFeatures/basic List basic items by features  
    Return Type

        Modify itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/bySku Get item by sku  
    Return Type

        Modify itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/bySku/locale Get an item by sku in locale  
    Return Type

        Modify itemType //Item type
        Modify items.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/locale/byIds Bulk get locale items  
    Return Type

        Modify itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/search Search items by keyword  
    Parameters

        Modify itemType
    Return Type

        Modify data.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/uncategorized Query uncategorized items  
    Return Type

        Modify data.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/items/{itemId} Update an item  
    Parameters

        Modify body.itemType //Item Type
    Return Type

        Modify itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/{itemId} Get an item  
    Return Type

        Modify itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/items/{itemId}/disable Disable an item  
    Return Type

        Modify itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/items/{itemId}/enable Enable an item  
    Return Type

        Modify itemType //Item type
`DELETE` /platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature} Defeature an item  
    Return Type

        Modify itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature} Feature an item  
    Return Type

        Modify itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/{itemId}/locale Get an item in locale  
    Return Type

        Modify itemType //Item type
        Modify items.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/items/{itemId}/purchase/condition Update item purchase condition  
    Return Type

        Modify itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/orders Query orders  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/orders/{orderNo} Get order  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/orders/{orderNo}/refund Refund order  
    Return Type

        Modify itemSnapshot.itemType //Item type
`POST` /platform/admin/namespaces/{namespace}/payment/orders Create payment order by dedicated server  
    Parameters

        Modify body.itemType //item type
`GET` /platform/admin/namespaces/{namespace}/payment/orders Query payment orders  
    Return Type

        Modify data.itemType //Order item type
`PUT` /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo} Charge payment order without payment flow  
    Return Type

        Modify itemType //Order item type
`GET` /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo} Get payment order  
    Return Type

        Modify itemType //Order item type
`GET` /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/byCriteria Query catalog changes  
    Parameters

        Modify itemType
    Return Type

        Modify data.itemType //item type
`GET` /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/statistics Get catalog changes statistics  
    Parameters

        Modify itemType
`GET` /platform/admin/namespaces/{namespace}/subscriptions Query subscriptions  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements Query user entitlements  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppId Get user app entitlement by appId  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppType Query app entitlements by appType  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byItemId Get user entitlement by itemId  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/bySku Get user entitlement by sku  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId} Update user entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId} Get user entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement Consume user entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/disable Disable user entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/enable Enable user entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke Revoke user entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/orders Query user orders  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo} Update order status  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo} Get an order  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/fulfill Fulfill an order  
    Return Type

        Modify itemSnapshot.itemType //Item type
`POST` /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders Create payment order  
    Parameters

        Modify body.itemType //item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders/{paymentOrderNo}/refund Refund payment order  
    Return Type

        Modify itemType //Order item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions Query user subscriptions  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`POST` /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/platformSubscribe Free subscribe by platform  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId} Get user subscription  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel Cancel a subscription  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/grant Grant days to a subscription  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/admin/orders Sync orders  
    Return Type

        Modify orders.itemSnapshot.itemType //Item type
`GET` /platform/admin/payment/orders Sync payment orders  
    Return Type

        Modify paymentOrders.itemType
`GET` /platform/public/namespaces/{namespace}/items/byAppId Get item by appId  
    Return Type

        Modify itemType //Item type
`GET` /platform/public/namespaces/{namespace}/items/byCriteria Query items by criteria  
    Parameters

        Modify itemType
    Return Type

        Modify data.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/items/bySku Get item by sku  
    Return Type

        Modify itemType //Item type
`GET` /platform/public/namespaces/{namespace}/items/locale/byIds Bulk get locale items  
    Return Type

        Modify itemType //Item type
`GET` /platform/public/namespaces/{namespace}/items/search Search items by keyword  
    Parameters

        Modify itemType
    Return Type

        Modify data.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/items/{itemId}/locale Get an item in locale  
    Return Type

        Modify itemType //Item type
        Modify items.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/entitlements Query user entitlements  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppId Get user app entitlement by appId  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppType Query app entitlements by appType  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byItemId Get user entitlement by itemId  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/entitlements/bySku Get user entitlement by sku  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId} Get user entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement Consume user entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/orders Query user orders  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo} Get user order  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/cancel Cancel user order  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/subscriptions Query user subscriptions  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId} Get user subscription  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/billingAccount Request to change a subscription billing account  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel Cancel a subscription  
    Return Type

        Modify itemSnapshot.itemType //Item type

## qosm Service

## Version  to 
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## seasonpass Service

## Version 1.14.0 to 1.13.3
---
### What's New
---

### What's Deprecated
---
* `GET` /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/full Get a season full content

### What's Changed
---

## sessionbrowser Service

## Version  to 
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## social Service

## Version 1.29.5 to 1.29.4
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## ugc Service

## Version 2.5.2 to 2.5.0
---
### What's New
---

### What's Deprecated
---

### What's Changed
---
`PUT` /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3/{contentId} Update content to S3 bucket  
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/search Search contents specific to a channel  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`PUT` /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId} Update content to a channel  
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/admin/namespaces/{namespace}/contents Get user's generated contents  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`GET` /ugc/v1/admin/namespaces/{namespace}/contents/search Search contents  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`GET` /ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/{shareCode} Get content by sharecode  
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/admin/namespaces/{namespace}/contents/{contentId} Get user specific content  
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}/contents Get contents belong to a group  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`PUT` /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId} Update content to S3 bucket  
    Return Type

        Modify creatorName //Creator Name is deprecated
`PUT` /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId} Update content to a channel  
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents Get user's generated contents  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`PUT` /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide Hide/Unhide user's generated contents  
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents Get contents belong to a group  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`GET` /ugc/v1/public/namespaces/{namespace}/channels/{channelId}/contents Search contents specific to a channel  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`GET` /ugc/v1/public/namespaces/{namespace}/contents Search contents  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`POST` /ugc/v1/public/namespaces/{namespace}/contents/bulk Get contents by content Ids   
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/public/namespaces/{namespace}/contents/followed Get contents from followed creators  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`GET` /ugc/v1/public/namespaces/{namespace}/contents/liked Get liked contents  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`GET` /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/{shareCode} Get content by sharecode  
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/public/namespaces/{namespace}/contents/{contentId} Get user specific content  
    Return Type

        Modify creatorName //Creator Name is deprecated
`PUT` /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId} Update content to S3 bucket  
    Return Type

        Modify creatorName //Creator Name is deprecated
`PUT` /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId} Update content to a channel  
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents Get user's generated contents  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`GET` /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents Get contents belong to a group  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
# Python Server SDK v0.23.0


## achievement Service

## Version  to 
---
### What's New
---

### What's Deprecated
---
* `DELETE` /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/reset Reset an achievement

### What's Changed
---

## basic Service

## Version 2.1.2 to 2.1.2
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## cloudsave Service

## Version 3.1.3 to 3.1.3
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## dslogmanager Service

## Version 2.4.2 to 2.4.2
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## dsmc Service

## Version 3.5.0 to 3.5.0
---
### What's New
---

### What's Deprecated
---

### What's Changed
---
`GET` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments Get All Deployments  
    Return Type

        Delete deployments.unlimited
`GET` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment} Get Deployment  
    Return Type

        Delete unlimited
`PATCH` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment} Update deployment  
    Parameters

        Delete body.unlimited
    Return Type

        Delete unlimited
`POST` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment} Create deployment  
    Parameters

        Delete body.unlimited
`DELETE` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region} Delete Region Override  
    Return Type

        Delete unlimited
`PATCH` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region} Update region override  
    Parameters

        Delete body.unlimited
    Return Type

        Delete unlimited
`POST` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region} Create region override  
    Parameters

        Delete body.unlimited
`POST` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/version/{version} Create deployment override  
    Parameters

        Delete body.unlimited
`DELETE` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version} Delete Deployment Override  
    Return Type

        Delete unlimited
`PATCH` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version} Update deployment override  
    Parameters

        Delete body.unlimited
    Return Type

        Delete unlimited
`DELETE` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region} Delete region override for deployment override  
    Return Type

        Delete unlimited
`PATCH` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region} Update region override for deployment override  
    Parameters

        Delete body.unlimited
    Return Type

        Delete unlimited
`POST` /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region} Create region override for deployment override  
    Parameters

        Delete body.unlimited
`GET` /dsmcontroller/admin/v1/namespaces/{namespace}/configs/export export DSM Controller configuration for a namespace  
    Return Type

        Delete deployments.unlimited

## eventlog Service

## Version  to 
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## gametelemetry Service

## Version 1.8.1 to 1.8.1
---
### What's New
---

### What's Deprecated
---

### What's Changed
---
`GET` /game-telemetry/v1/admin/namespaces/{namespace}/events Get Events  
    Parameters

        Modify startTime //Start time of data to be queried. Default: Current time in UTC minus 1 day.
        Modify endTime //End time of data to be queried. Default: Current time in UTC.

## gdpr Service

## Version 1.14.8 to 1.14.8
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## group Service

## Version 2.11.7 to 2.11.7
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## iam Service

## Version 5.15.0 to 5.15.0
---
### What's New
---

### What's Deprecated
---
* `POST` /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/force Force linking user's account with platform
* `GET` /iam/v3/public/namespaces/{namespace}/users/{userId}/information Get user's information v3
* `POST` /iam/v3/public/users/me/verify_link/request Send verification link to user, this link will point to '/iam/v3/public/users/verify_link/verify'
* `GET` /iam/v3/public/users/verify_link/verify Verify user email by the verification link code
* `GET` /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} Get user mapping

### What's Changed
---

## leaderboard Service

## Version 2.15.7 to 2.15.7
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## legal Service

## Version 1.22.5 to 1.22.5
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## lobby Service

## Version staging to staging
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## matchmaking Service

## Version 2.15.6 to 2.15.6
---
### What's New
---

### What's Deprecated
---

### What's Changed
---
`POST` /matchmaking/namespaces/{namespace}/channels Create a channel  
    Parameters

        Delete body.rule_set.alliance.combination
        Delete body.rule_set.alliance_flexing_rule.combination
`GET` /matchmaking/namespaces/{namespace}/channels Get all channels  
    Return Type

        Delete data.ruleset.alliance.combination
        Delete data.ruleset.alliance_flexing_rule.combination
`GET` /matchmaking/v1/admin/namespaces/{namespace}/channels/export Export channels  
    Return Type

        Delete ruleSet.alliance.combination
        Delete ruleSet.alliance_flexing_rule.combination
`PATCH` /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName} Update a channel  
    Parameters

        Delete body.ruleSet.alliance.combination
        Delete body.ruleSet.alliance_flexing_rule.combination
`GET` /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName} Get single channel  
    Return Type

        Delete ruleSet.alliance.combination
        Delete ruleSet.alliance_flexing_rule.combination
`GET` /matchmaking/v1/public/namespaces/{namespace}/channels Get all channels  
    Return Type

        Delete ruleSet.alliance.combination
        Delete ruleSet.alliance_flexing_rule.combination
`GET` /matchmaking/v1/public/namespaces/{namespace}/channels/{channelName} Get single channel  
    Return Type

        Delete ruleSet.alliance.combination
        Delete ruleSet.alliance_flexing_rule.combination

## platform Service

## Version 4.13.0 to 4.13.0
---
### What's New
---

### What's Deprecated
---
* `GET` /platform/admin/items/configs Get all item type configs
* `POST` /platform/admin/items/configs Create an Item Type Config
* `GET` /platform/admin/items/configs/search Get an item type config
* `GET` /platform/admin/items/configs/{id} Get an item type config
* `PUT` /platform/admin/items/configs/{id} Update an Item Type Config
* `DELETE` /platform/admin/items/configs/{id} Delete an item type config
* `GET` /platform/v2/admin/namespaces/{namespace}/items/byCriteria Query items by criteria

### What's Changed
---
`POST` /platform/admin/fulfillment/scripts/tests/eval Test eval fulfillment script  
    Parameters

        Modify body.context.item.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/entitlements Query entitlements  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/entitlements/{entitlementId} Get entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/fulfillment/history Query fulfillment histories  
    Return Type

        Delete data.extensionFulfillmentSummaries //extension fulfillment granted
        Modify data.fulfillItems.itemType //item type
`POST` /platform/admin/namespaces/{namespace}/items Create an Item  
    Parameters

        Modify body.itemType //Item Type
`PUT` /platform/admin/namespaces/{namespace}/items Sync an in game item  
    Return Type

        Modify itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/byAppId Get item by appId  
    Return Type

        Modify itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/byCriteria Query items by criteria  
    Parameters

        Modify itemType
    Return Type

        Modify data.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/byFeatures/basic List basic items by features  
    Return Type

        Modify itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/bySku Get item by sku  
    Return Type

        Modify itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/bySku/locale Get an item by sku in locale  
    Return Type

        Modify itemType //Item type
        Modify items.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/locale/byIds Bulk get locale items  
    Return Type

        Modify itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/search Search items by keyword  
    Parameters

        Modify itemType
    Return Type

        Modify data.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/uncategorized Query uncategorized items  
    Return Type

        Modify data.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/items/{itemId} Update an item  
    Parameters

        Modify body.itemType //Item Type
    Return Type

        Modify itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/{itemId} Get an item  
    Return Type

        Modify itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/items/{itemId}/disable Disable an item  
    Return Type

        Modify itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/items/{itemId}/enable Enable an item  
    Return Type

        Modify itemType //Item type
`DELETE` /platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature} Defeature an item  
    Return Type

        Modify itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature} Feature an item  
    Return Type

        Modify itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/items/{itemId}/locale Get an item in locale  
    Return Type

        Modify itemType //Item type
        Modify items.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/items/{itemId}/purchase/condition Update item purchase condition  
    Return Type

        Modify itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/orders Query orders  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/orders/{orderNo} Get order  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/orders/{orderNo}/refund Refund order  
    Return Type

        Modify itemSnapshot.itemType //Item type
`POST` /platform/admin/namespaces/{namespace}/payment/orders Create payment order by dedicated server  
    Parameters

        Modify body.itemType //item type
`GET` /platform/admin/namespaces/{namespace}/payment/orders Query payment orders  
    Return Type

        Modify data.itemType //Order item type
`PUT` /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo} Charge payment order without payment flow  
    Return Type

        Modify itemType //Order item type
`GET` /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo} Get payment order  
    Return Type

        Modify itemType //Order item type
`GET` /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/byCriteria Query catalog changes  
    Parameters

        Modify itemType
    Return Type

        Modify data.itemType //item type
`GET` /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/statistics Get catalog changes statistics  
    Parameters

        Modify itemType
`GET` /platform/admin/namespaces/{namespace}/subscriptions Query subscriptions  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements Query user entitlements  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppId Get user app entitlement by appId  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppType Query app entitlements by appType  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byItemId Get user entitlement by itemId  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/bySku Get user entitlement by sku  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId} Update user entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId} Get user entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement Consume user entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/disable Disable user entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/enable Enable user entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke Revoke user entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/orders Query user orders  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo} Update order status  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo} Get an order  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/fulfill Fulfill an order  
    Return Type

        Modify itemSnapshot.itemType //Item type
`POST` /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders Create payment order  
    Parameters

        Modify body.itemType //item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders/{paymentOrderNo}/refund Refund payment order  
    Return Type

        Modify itemType //Order item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions Query user subscriptions  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`POST` /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/platformSubscribe Free subscribe by platform  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId} Get user subscription  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel Cancel a subscription  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/grant Grant days to a subscription  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/admin/orders Sync orders  
    Return Type

        Modify orders.itemSnapshot.itemType //Item type
`GET` /platform/admin/payment/orders Sync payment orders  
    Return Type

        Modify paymentOrders.itemType
`GET` /platform/public/namespaces/{namespace}/items/byAppId Get item by appId  
    Return Type

        Modify itemType //Item type
`GET` /platform/public/namespaces/{namespace}/items/byCriteria Query items by criteria  
    Parameters

        Modify itemType
    Return Type

        Modify data.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/items/bySku Get item by sku  
    Return Type

        Modify itemType //Item type
`GET` /platform/public/namespaces/{namespace}/items/locale/byIds Bulk get locale items  
    Return Type

        Modify itemType //Item type
`GET` /platform/public/namespaces/{namespace}/items/search Search items by keyword  
    Parameters

        Modify itemType
    Return Type

        Modify data.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/items/{itemId}/locale Get an item in locale  
    Return Type

        Modify itemType //Item type
        Modify items.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/entitlements Query user entitlements  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppId Get user app entitlement by appId  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppType Query app entitlements by appType  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byItemId Get user entitlement by itemId  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/entitlements/bySku Get user entitlement by sku  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId} Get user entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement Consume user entitlement  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/orders Query user orders  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo} Get user order  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/cancel Cancel user order  
    Return Type

        Modify itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/subscriptions Query user subscriptions  
    Return Type

        Modify data.itemSnapshot.itemType //Item type
`GET` /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId} Get user subscription  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/billingAccount Request to change a subscription billing account  
    Return Type

        Modify itemSnapshot.itemType //Item type
`PUT` /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel Cancel a subscription  
    Return Type

        Modify itemSnapshot.itemType //Item type

## qosm Service

## Version  to 
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## seasonpass Service

## Version 1.13.3 to 1.13.3
---
### What's New
---

### What's Deprecated
---
* `GET` /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/full Get a season full content

### What's Changed
---

## sessionbrowser Service

## Version  to 
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## social Service

## Version 1.29.4 to 1.29.4
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## ugc Service

## Version 2.5.1 to 2.5.0
---
### What's New
---

### What's Deprecated
---

### What's Changed
---
`PUT` /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3/{contentId} Update content to S3 bucket  
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/search Search contents specific to a channel  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`PUT` /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId} Update content to a channel  
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/admin/namespaces/{namespace}/contents Get user's generated contents  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`GET` /ugc/v1/admin/namespaces/{namespace}/contents/search Search contents  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`GET` /ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/{shareCode} Get content by sharecode  
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/admin/namespaces/{namespace}/contents/{contentId} Get user specific content  
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}/contents Get contents belong to a group  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`PUT` /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId} Update content to S3 bucket  
    Return Type

        Modify creatorName //Creator Name is deprecated
`PUT` /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId} Update content to a channel  
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents Get user's generated contents  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`PUT` /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide Hide/Unhide user's generated contents  
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents Get contents belong to a group  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`GET` /ugc/v1/public/namespaces/{namespace}/channels/{channelId}/contents Search contents specific to a channel  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`GET` /ugc/v1/public/namespaces/{namespace}/contents Search contents  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`POST` /ugc/v1/public/namespaces/{namespace}/contents/bulk Get contents by content Ids   
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/public/namespaces/{namespace}/contents/followed Get contents from followed creators  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`GET` /ugc/v1/public/namespaces/{namespace}/contents/liked Get liked contents  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`GET` /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/{shareCode} Get content by sharecode  
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/public/namespaces/{namespace}/contents/{contentId} Get user specific content  
    Return Type

        Modify creatorName //Creator Name is deprecated
`PUT` /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId} Update content to S3 bucket  
    Return Type

        Modify creatorName //Creator Name is deprecated
`PUT` /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId} Update content to a channel  
    Return Type

        Modify creatorName //Creator Name is deprecated
`GET` /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents Get user's generated contents  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
`GET` /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents Get contents belong to a group  
    Return Type

        Modify data.creatorName //Creator Name is deprecated
# Python Server SDK v0.21.0

## achievement Service

## Version  to 
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## basic Service

## Version 2.1.1 to 2.1.1
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## cloudsave Service

## Version 3.1.2 to 3.1.2
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## dslogmanager Service

## Version 2.4.1 to 2.4.1
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## dsmc Service

## Version 3.4.1 to 3.4.1
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## eventlog Service

## Version  to 
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## gametelemetry Service

## Version 1.8.0 to 1.8.0
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## gdpr Service

## Version 1.14.7 to 1.14.7
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## group Service

## Version 2.11.6 to 2.11.6
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## iam Service

## Version 5.14.0 to 5.14.0
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## leaderboard Service

## Version 2.15.6 to 2.15.6
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## legal Service

## Version 1.22.4 to 1.22.4
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## lobby Service

## Version staging to staging
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## matchmaking Service

## Version 2.15.5 to 2.15.5
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## platform Service

## Version 4.12.1 to 4.12.1
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## qosm Service

## Version  to 
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## seasonpass Service

## Version 1.13.2 to 1.13.2
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## sessionbrowser Service

## Version  to 
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## social Service

## Version 1.29.3 to 1.29.3
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

## ugc Service

## Version 2.4.0 to 2.4.0
---
### What's New
---

### What's Deprecated
---

### What's Changed
---

