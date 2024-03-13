import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gametelemetry import (
    get_events_game_telemetry_v1_admin_namespaces_namespace_events_get,
)
from accelbyte_py_sdk.api.gametelemetry.models import BaseErrorResponse
from accelbyte_py_sdk.api.gametelemetry.models import HTTPValidationError
from accelbyte_py_sdk.api.gametelemetry.models import (
    PagedResponseGetNamespaceEventResponse,
)

result, error = get_events_game_telemetry_v1_admin_namespaces_namespace_events_get(
    end_time=end_time,
    event_id=event_id,
    event_name=event_name,
    event_payload=event_payload,
    flight_id=flight_id,
    limit=limit,
    offset=offset,
    start_time=start_time,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
