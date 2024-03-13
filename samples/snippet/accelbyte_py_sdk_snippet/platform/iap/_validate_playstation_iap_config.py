import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import validate_playstation_iap_config
from accelbyte_py_sdk.api.platform.models import PlaystationIAPConfigRequest
from accelbyte_py_sdk.api.platform.models import TestResult

"""
body:
Definition: PlaystationIAPConfigRequest
back_office_server_client_id: str
back_office_server_client_secret: str
enable_stream_job: bool
environment: str
stream_name: str
stream_partner_name: str

Example: '{"backOfficeServerClientId": "eRNeCgv1uOUiKrGz", "backOfficeServerClientSecret": "v4ffAp56oaYhQWNW", "enableStreamJob": true, "environment": "ael5Y8TNoRXlbHc6", "streamName": "RSMuW6LWAJwmNJQv", "streamPartnerName": "K9hJRKKQHOa6U8fS"}'
"""

result, error = validate_playstation_iap_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
