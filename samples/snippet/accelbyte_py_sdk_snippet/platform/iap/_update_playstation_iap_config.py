import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_playstation_iap_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PlayStationIAPConfigInfo
from accelbyte_py_sdk.api.platform.models import PlaystationIAPConfigRequest

"""
body:
Definition: PlaystationIAPConfigRequest
back_office_server_client_id: str
back_office_server_client_secret: str
enable_stream_job: bool
environment: str
stream_name: str
stream_partner_name: str

Example: '{"backOfficeServerClientId": "UYXtTu0jK9pcRpJ7", "backOfficeServerClientSecret": "3yWyKhAJ3l6Ubqft", "enableStreamJob": false, "environment": "ctpO6HKZU2s4vntQ", "streamName": "qUddB3tgrGsarv6t", "streamPartnerName": "uGQG02so0fg4yIJd"}'
"""

result, error = update_playstation_iap_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
