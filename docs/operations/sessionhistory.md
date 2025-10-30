[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: ags_py_codegen)

# AccelByte Gaming Services Session History Service Index (1.14.4)


## Operations

### XRay
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/bulk | POST | createXrayBulkTicketObservability | `false` | [CreateXrayBulkTicketObservability](../../accelbyte_py_sdk/api/sessionhistory/operations/x_ray/create_xray_bulk_ticket_cacbf6.py) | [create_xray_bulk_ticket_observability](../../accelbyte_py_sdk/api/sessionhistory/wrappers/_x_ray.py) | [accelbyte_py_sdk_cli sessionhistory-create-xray-bulk-ticket-observability](../../samples/cli/accelbyte_py_sdk_cli/sessionhistory/_create_xray_bulk_ticket_observability.py) |
| /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets | POST | createXrayTicketObservability | `false` | [CreateXrayTicketObservability](../../accelbyte_py_sdk/api/sessionhistory/operations/x_ray/create_xray_ticket_obse_a825bd.py) | [create_xray_ticket_observability](../../accelbyte_py_sdk/api/sessionhistory/wrappers/_x_ray.py) | [accelbyte_py_sdk_cli sessionhistory-create-xray-ticket-observability](../../samples/cli/accelbyte_py_sdk_cli/sessionhistory/_create_xray_ticket_observability.py) |


## Models
| Model | Class |
|---|---|
| apimodels.XRayBulkTicketObservabilityRequest | [ApimodelsXRayBulkTicketObservabilityRequest](../../accelbyte_py_sdk/api/sessionhistory/models/apimodels_x_ray_bulk_ticket_observability_request.py) |
| apimodels.XRayBulkTicketObservabilityResponse | [ApimodelsXRayBulkTicketObservabilityResponse](../../accelbyte_py_sdk/api/sessionhistory/models/apimodels_x_ray_bulk_ticket_observability_response.py) |
| apimodels.XRayTicketObservabilityRequest | [ApimodelsXRayTicketObservabilityRequest](../../accelbyte_py_sdk/api/sessionhistory/models/apimodels_x_ray_ticket_observability_request.py) |
| apimodels.XRayTicketObservabilityResponse | [ApimodelsXRayTicketObservabilityResponse](../../accelbyte_py_sdk/api/sessionhistory/models/apimodels_x_ray_ticket_observability_response.py) |
| models.AllianceRule | [ModelsAllianceRule](../../accelbyte_py_sdk/api/sessionhistory/models/models_alliance_rule.py) |
| models.MatchingRule | [ModelsMatchingRule](../../accelbyte_py_sdk/api/sessionhistory/models/models_matching_rule.py) |
| response.Error | [ResponseError](../../accelbyte_py_sdk/api/sessionhistory/models/response_error.py) |
