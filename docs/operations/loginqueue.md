[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: ags_py_codegen)

# AccelByte Gaming Services Login Queue Service Index (2.1.0)


## Operations

### Admin V1
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /login-queue/v1/admin/namespaces/{namespace}/config | GET | adminGetConfiguration | `false` | [AdminGetConfiguration](../../accelbyte_py_sdk/api/loginqueue/operations/admin_v1/admin_get_configuration.py) | [admin_get_configuration](../../accelbyte_py_sdk/api/loginqueue/wrappers/_admin_v1.py) | [accelbyte_py_sdk_cli loginqueue-admin-get-configuration](../../samples/cli/accelbyte_py_sdk_cli/loginqueue/_admin_get_configuration.py) |
| /login-queue/v1/admin/namespaces/{namespace}/status | GET | adminGetStatus | `false` | [AdminGetStatus](../../accelbyte_py_sdk/api/loginqueue/operations/admin_v1/admin_get_status.py) | [admin_get_status](../../accelbyte_py_sdk/api/loginqueue/wrappers/_admin_v1.py) | [accelbyte_py_sdk_cli loginqueue-admin-get-status](../../samples/cli/accelbyte_py_sdk_cli/loginqueue/_admin_get_status.py) |
| /login-queue/v1/admin/namespaces/{namespace}/config | PUT | adminUpdateConfiguration | `false` | [AdminUpdateConfiguration](../../accelbyte_py_sdk/api/loginqueue/operations/admin_v1/admin_update_configuration.py) | [admin_update_configuration](../../accelbyte_py_sdk/api/loginqueue/wrappers/_admin_v1.py) | [accelbyte_py_sdk_cli loginqueue-admin-update-configuration](../../samples/cli/accelbyte_py_sdk_cli/loginqueue/_admin_update_configuration.py) |

### Ticket V1
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /login-queue/v1/namespaces/{namespace}/ticket | DELETE | cancelTicket | `false` | [CancelTicket](../../accelbyte_py_sdk/api/loginqueue/operations/ticket_v1/cancel_ticket.py) | [cancel_ticket](../../accelbyte_py_sdk/api/loginqueue/wrappers/_ticket_v1.py) | [accelbyte_py_sdk_cli loginqueue-cancel-ticket](../../samples/cli/accelbyte_py_sdk_cli/loginqueue/_cancel_ticket.py) |
| /login-queue/v1/namespaces/{namespace}/ticket | GET | refreshTicket | `false` | [RefreshTicket](../../accelbyte_py_sdk/api/loginqueue/operations/ticket_v1/refresh_ticket.py) | [refresh_ticket](../../accelbyte_py_sdk/api/loginqueue/wrappers/_ticket_v1.py) | [accelbyte_py_sdk_cli loginqueue-refresh-ticket](../../samples/cli/accelbyte_py_sdk_cli/loginqueue/_refresh_ticket.py) |


## Models
| Model | Class |
|---|---|
| apimodels.ConfigurationRequest | [ApimodelsConfigurationRequest](../../accelbyte_py_sdk/api/loginqueue/models/apimodels_configuration_request.py) |
| apimodels.ConfigurationResponse | [ApimodelsConfigurationResponse](../../accelbyte_py_sdk/api/loginqueue/models/apimodels_configuration_response.py) |
| apimodels.Link | [ApimodelsLink](../../accelbyte_py_sdk/api/loginqueue/models/apimodels_link.py) |
| apimodels.QueueStatusResponse | [ApimodelsQueueStatusResponse](../../accelbyte_py_sdk/api/loginqueue/models/apimodels_queue_status_response.py) |
| apimodels.RefreshTicketResponse | [ApimodelsRefreshTicketResponse](../../accelbyte_py_sdk/api/loginqueue/models/apimodels_refresh_ticket_response.py) |
| response.Error | [ResponseError](../../accelbyte_py_sdk/api/loginqueue/models/response_error.py) |
