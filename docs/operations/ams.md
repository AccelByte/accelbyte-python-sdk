[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: ags_py_codegen)

# Fleet Commander Index (1.0.1)


## Operations

### Account
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /ams/v1/admin/namespaces/{namespace}/account | POST | AccountCreate | `false` | [AccountCreate](../../accelbyte_py_sdk/api/ams/operations/account/account_create.py) | [account_create](../../accelbyte_py_sdk/api/ams/wrappers/_account.py) | [accelbyte_py_sdk_cli ams-account-create](../../samples/cli/accelbyte_py_sdk_cli/ams/_account_create.py) |
| /ams/v1/admin/namespaces/{namespace}/account | GET | AccountGet | `false` | [AccountGet](../../accelbyte_py_sdk/api/ams/operations/account/account_get.py) | [account_get](../../accelbyte_py_sdk/api/ams/wrappers/_account.py) | [accelbyte_py_sdk_cli ams-account-get](../../samples/cli/accelbyte_py_sdk_cli/ams/_account_get.py) |
| /ams/v1/admin/namespaces/{namespace}/account/link | POST | AccountLink | `false` | [AccountLink](../../accelbyte_py_sdk/api/ams/operations/account/account_link.py) | [account_link](../../accelbyte_py_sdk/api/ams/wrappers/_account.py) | [accelbyte_py_sdk_cli ams-account-link](../../samples/cli/accelbyte_py_sdk_cli/ams/_account_link.py) |
| /ams/v1/admin/namespaces/{namespace}/account/link | GET | AccountLinkTokenGet | `false` | [AccountLinkTokenGet](../../accelbyte_py_sdk/api/ams/operations/account/account_link_token_get.py) | [account_link_token_get](../../accelbyte_py_sdk/api/ams/wrappers/_account.py) | [accelbyte_py_sdk_cli ams-account-link-token-get](../../samples/cli/accelbyte_py_sdk_cli/ams/_account_link_token_get.py) |

### AMS Info
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /ams/v1/admin/namespaces/{namespace}/regions | GET | InfoRegions | `false` | [InfoRegions](../../accelbyte_py_sdk/api/ams/operations/ams_info/info_regions.py) | [info_regions](../../accelbyte_py_sdk/api/ams/wrappers/_ams_info.py) | [accelbyte_py_sdk_cli ams-info-regions](../../samples/cli/accelbyte_py_sdk_cli/ams/_info_regions.py) |
| /ams/v1/admin/namespaces/{namespace}/supported-instances | GET | InfoSupportedInstances | `false` | [InfoSupportedInstances](../../accelbyte_py_sdk/api/ams/operations/ams_info/info_supported_instances.py) | [info_supported_instances](../../accelbyte_py_sdk/api/ams/wrappers/_ams_info.py) | [accelbyte_py_sdk_cli ams-info-supported-instances](../../samples/cli/accelbyte_py_sdk_cli/ams/_info_supported_instances.py) |

### Auth
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /ams/auth | GET | AuthCheck | `false` | [AuthCheck](../../accelbyte_py_sdk/api/ams/operations/auth/auth_check.py) | [auth_check](../../accelbyte_py_sdk/api/ams/wrappers/_auth.py) | [accelbyte_py_sdk_cli ams-auth-check](../../samples/cli/accelbyte_py_sdk_cli/ams/_auth_check.py) |

### Fleet Commander
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /healthz | GET | BasicHealthCheck | `false` | [BasicHealthCheck](../../accelbyte_py_sdk/api/ams/operations/fleet_commander/basic_health_check.py) | [basic_health_check](../../accelbyte_py_sdk/api/ams/wrappers/_fleet_commander.py) | [accelbyte_py_sdk_cli ams-basic-health-check](../../samples/cli/accelbyte_py_sdk_cli/ams/_basic_health_check.py) |
| /ams/version | GET | func1 | `false` | [Func1](../../accelbyte_py_sdk/api/ams/operations/fleet_commander/func1.py) | [func1](../../accelbyte_py_sdk/api/ams/wrappers/_fleet_commander.py) | [accelbyte_py_sdk_cli ams-func1](../../samples/cli/accelbyte_py_sdk_cli/ams/_func1.py) |
| /ams/healthz | GET | PortalHealthCheck | `false` | [PortalHealthCheck](../../accelbyte_py_sdk/api/ams/operations/fleet_commander/portal_health_check.py) | [portal_health_check](../../accelbyte_py_sdk/api/ams/wrappers/_fleet_commander.py) | [accelbyte_py_sdk_cli ams-portal-health-check](../../samples/cli/accelbyte_py_sdk_cli/ams/_portal_health_check.py) |

### Fleets
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /ams/v1/namespaces/{namespace}/fleets/{fleetID}/claim | PUT | FleetClaimByID | `false` | [FleetClaimByID](../../accelbyte_py_sdk/api/ams/operations/fleets/fleet_claim_by_id.py) | [fleet_claim_by_id](../../accelbyte_py_sdk/api/ams/wrappers/_fleets.py) | [accelbyte_py_sdk_cli ams-fleet-claim-by-id](../../samples/cli/accelbyte_py_sdk_cli/ams/_fleet_claim_by_id.py) |
| /ams/v1/namespaces/{namespace}/servers/claim | PUT | FleetClaimByKeys | `false` | [FleetClaimByKeys](../../accelbyte_py_sdk/api/ams/operations/fleets/fleet_claim_by_keys.py) | [fleet_claim_by_keys](../../accelbyte_py_sdk/api/ams/wrappers/_fleets.py) | [accelbyte_py_sdk_cli ams-fleet-claim-by-keys](../../samples/cli/accelbyte_py_sdk_cli/ams/_fleet_claim_by_keys.py) |
| /ams/v1/admin/namespaces/{namespace}/fleets | POST | FleetCreate | `false` | [FleetCreate](../../accelbyte_py_sdk/api/ams/operations/fleets/fleet_create.py) | [fleet_create](../../accelbyte_py_sdk/api/ams/wrappers/_fleets.py) | [accelbyte_py_sdk_cli ams-fleet-create](../../samples/cli/accelbyte_py_sdk_cli/ams/_fleet_create.py) |
| /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID} | DELETE | FleetDelete | `false` | [FleetDelete](../../accelbyte_py_sdk/api/ams/operations/fleets/fleet_delete.py) | [fleet_delete](../../accelbyte_py_sdk/api/ams/wrappers/_fleets.py) | [accelbyte_py_sdk_cli ams-fleet-delete](../../samples/cli/accelbyte_py_sdk_cli/ams/_fleet_delete.py) |
| /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID} | GET | FleetGet | `false` | [FleetGet](../../accelbyte_py_sdk/api/ams/operations/fleets/fleet_get.py) | [fleet_get](../../accelbyte_py_sdk/api/ams/wrappers/_fleets.py) | [accelbyte_py_sdk_cli ams-fleet-get](../../samples/cli/accelbyte_py_sdk_cli/ams/_fleet_get.py) |
| /ams/v1/admin/namespaces/{namespace}/fleets | GET | FleetList | `false` | [FleetList](../../accelbyte_py_sdk/api/ams/operations/fleets/fleet_list.py) | [fleet_list](../../accelbyte_py_sdk/api/ams/wrappers/_fleets.py) | [accelbyte_py_sdk_cli ams-fleet-list](../../samples/cli/accelbyte_py_sdk_cli/ams/_fleet_list.py) |
| /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers | GET | FleetServers | `false` | [FleetServers](../../accelbyte_py_sdk/api/ams/operations/fleets/fleet_servers.py) | [fleet_servers](../../accelbyte_py_sdk/api/ams/wrappers/_fleets.py) | [accelbyte_py_sdk_cli ams-fleet-servers](../../samples/cli/accelbyte_py_sdk_cli/ams/_fleet_servers.py) |
| /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID} | PUT | FleetUpdate | `false` | [FleetUpdate](../../accelbyte_py_sdk/api/ams/operations/fleets/fleet_update.py) | [fleet_update](../../accelbyte_py_sdk/api/ams/wrappers/_fleets.py) | [accelbyte_py_sdk_cli ams-fleet-update](../../samples/cli/accelbyte_py_sdk_cli/ams/_fleet_update.py) |

### Images
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /ams/v1/admin/namespaces/{namespace}/images/{imageID} | GET | ImageGet | `false` | [ImageGet](../../accelbyte_py_sdk/api/ams/operations/images/image_get.py) | [image_get](../../accelbyte_py_sdk/api/ams/wrappers/_images.py) | [accelbyte_py_sdk_cli ams-image-get](../../samples/cli/accelbyte_py_sdk_cli/ams/_image_get.py) |
| /ams/v1/admin/namespaces/{namespace}/images | GET | ImageList | `false` | [ImageList](../../accelbyte_py_sdk/api/ams/operations/images/image_list.py) | [image_list](../../accelbyte_py_sdk/api/ams/wrappers/_images.py) | [accelbyte_py_sdk_cli ams-image-list](../../samples/cli/accelbyte_py_sdk_cli/ams/_image_list.py) |
| /ams/v1/admin/namespaces/{namespace}/images/{imageID} | PATCH | ImagePatch | `false` | [ImagePatch](../../accelbyte_py_sdk/api/ams/operations/images/image_patch.py) | [image_patch](../../accelbyte_py_sdk/api/ams/wrappers/_images.py) | [accelbyte_py_sdk_cli ams-image-patch](../../samples/cli/accelbyte_py_sdk_cli/ams/_image_patch.py) |

### Servers
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers/history | GET | FleetServerHistory | `false` | [FleetServerHistory](../../accelbyte_py_sdk/api/ams/operations/servers/fleet_server_history.py) | [fleet_server_history](../../accelbyte_py_sdk/api/ams/wrappers/_servers.py) | [accelbyte_py_sdk_cli ams-fleet-server-history](../../samples/cli/accelbyte_py_sdk_cli/ams/_fleet_server_history.py) |
| /ams/v1/admin/namespaces/{namespace}/servers/{serverID} | GET | FleetServerInfo | `false` | [FleetServerInfo](../../accelbyte_py_sdk/api/ams/operations/servers/fleet_server_info.py) | [fleet_server_info](../../accelbyte_py_sdk/api/ams/wrappers/_servers.py) | [accelbyte_py_sdk_cli ams-fleet-server-info](../../samples/cli/accelbyte_py_sdk_cli/ams/_fleet_server_info.py) |
| /ams/v1/admin/namespaces/{namespace}/servers/{serverID}/history | GET | ServerHistory | `false` | [ServerHistory](../../accelbyte_py_sdk/api/ams/operations/servers/server_history.py) | [server_history](../../accelbyte_py_sdk/api/ams/wrappers/_servers.py) | [accelbyte_py_sdk_cli ams-server-history](../../samples/cli/accelbyte_py_sdk_cli/ams/_server_history.py) |

### Watchdogs
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /ams/v1/namespaces/{namespace}/watchdogs/{watchdogID}/connect | GET | WatchdogConnect | `false` | [WatchdogConnect](../../accelbyte_py_sdk/api/ams/operations/watchdogs/watchdog_connect.py) | [watchdog_connect](../../accelbyte_py_sdk/api/ams/wrappers/_watchdogs.py) | [accelbyte_py_sdk_cli ams-watchdog-connect](../../samples/cli/accelbyte_py_sdk_cli/ams/_watchdog_connect.py) |


## Models
| Model | Class |
|---|---|
| api.AccountCreateRequest | [ApiAccountCreateRequest](../../accelbyte_py_sdk/api/ams/models/api_account_create_request.py) |
| api.AccountCreateResponse | [ApiAccountCreateResponse](../../accelbyte_py_sdk/api/ams/models/api_account_create_response.py) |
| api.AccountLinkRequest | [ApiAccountLinkRequest](../../accelbyte_py_sdk/api/ams/models/api_account_link_request.py) |
| api.AccountLinkResponse | [ApiAccountLinkResponse](../../accelbyte_py_sdk/api/ams/models/api_account_link_response.py) |
| api.AccountLinkTokenResponse | [ApiAccountLinkTokenResponse](../../accelbyte_py_sdk/api/ams/models/api_account_link_token_response.py) |
| api.AccountResponse | [ApiAccountResponse](../../accelbyte_py_sdk/api/ams/models/api_account_response.py) |
| api.AvailableInstanceTypesResponse | [ApiAvailableInstanceTypesResponse](../../accelbyte_py_sdk/api/ams/models/api_available_instance_types_response.py) |
| api.DSHistoryEvent | [ApiDSHistoryEvent](../../accelbyte_py_sdk/api/ams/models/api_ds_history_event.py) |
| api.DSHistoryList | [ApiDSHistoryList](../../accelbyte_py_sdk/api/ams/models/api_ds_history_list.py) |
| api.DSHostConfiguration | [ApiDSHostConfiguration](../../accelbyte_py_sdk/api/ams/models/api_ds_host_configuration.py) |
| api.FleetClaimByKeysReq | [ApiFleetClaimByKeysReq](../../accelbyte_py_sdk/api/ams/models/api_fleet_claim_by_keys_req.py) |
| api.FleetClaimReq | [ApiFleetClaimReq](../../accelbyte_py_sdk/api/ams/models/api_fleet_claim_req.py) |
| api.FleetClaimResponse | [ApiFleetClaimResponse](../../accelbyte_py_sdk/api/ams/models/api_fleet_claim_response.py) |
| api.FleetCreateResponse | [ApiFleetCreateResponse](../../accelbyte_py_sdk/api/ams/models/api_fleet_create_response.py) |
| api.FleetGetResponse | [ApiFleetGetResponse](../../accelbyte_py_sdk/api/ams/models/api_fleet_get_response.py) |
| api.FleetListItemResponse | [ApiFleetListItemResponse](../../accelbyte_py_sdk/api/ams/models/api_fleet_list_item_response.py) |
| api.FleetListResponse | [ApiFleetListResponse](../../accelbyte_py_sdk/api/ams/models/api_fleet_list_response.py) |
| api.FleetParameters | [ApiFleetParameters](../../accelbyte_py_sdk/api/ams/models/api_fleet_parameters.py) |
| api.FleetRegionalServerCounts | [ApiFleetRegionalServerCounts](../../accelbyte_py_sdk/api/ams/models/api_fleet_regional_server_counts.py) |
| api.FleetServerHistoryEventResponse | [ApiFleetServerHistoryEventResponse](../../accelbyte_py_sdk/api/ams/models/api_fleet_server_history_event_response.py) |
| api.FleetServerHistoryResponse | [ApiFleetServerHistoryResponse](../../accelbyte_py_sdk/api/ams/models/api_fleet_server_history_response.py) |
| api.FleetServerInfoResponse | [ApiFleetServerInfoResponse](../../accelbyte_py_sdk/api/ams/models/api_fleet_server_info_response.py) |
| api.FleetServersResponse | [ApiFleetServersResponse](../../accelbyte_py_sdk/api/ams/models/api_fleet_servers_response.py) |
| api.ImageDeploymentProfile | [ApiImageDeploymentProfile](../../accelbyte_py_sdk/api/ams/models/api_image_deployment_profile.py) |
| api.ImageDetails | [ApiImageDetails](../../accelbyte_py_sdk/api/ams/models/api_image_details.py) |
| api.ImageList | [ApiImageList](../../accelbyte_py_sdk/api/ams/models/api_image_list.py) |
| api.ImageListItem | [ApiImageListItem](../../accelbyte_py_sdk/api/ams/models/api_image_list_item.py) |
| api.ImageUpdate | [ApiImageUpdate](../../accelbyte_py_sdk/api/ams/models/api_image_update.py) |
| api.InstanceTypeDescriptionResponse | [ApiInstanceTypeDescriptionResponse](../../accelbyte_py_sdk/api/ams/models/api_instance_type_description_response.py) |
| api.PagingInfo | [ApiPagingInfo](../../accelbyte_py_sdk/api/ams/models/api_paging_info.py) |
| api.PortConfiguration | [ApiPortConfiguration](../../accelbyte_py_sdk/api/ams/models/api_port_configuration.py) |
| api.ReferencingFleet | [ApiReferencingFleet](../../accelbyte_py_sdk/api/ams/models/api_referencing_fleet.py) |
| api.RegionConfig | [ApiRegionConfig](../../accelbyte_py_sdk/api/ams/models/api_region_config.py) |
| api.RegionsResponse | [ApiRegionsResponse](../../accelbyte_py_sdk/api/ams/models/api_regions_response.py) |
| api.Timeout | [ApiTimeout](../../accelbyte_py_sdk/api/ams/models/api_timeout.py) |
| response.ErrorResponse | [ResponseErrorResponse](../../accelbyte_py_sdk/api/ams/models/response_error_response.py) |
