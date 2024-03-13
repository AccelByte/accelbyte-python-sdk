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

Example: '{"backOfficeServerClientId": "SxUIQZKzhIIWyUu8", "backOfficeServerClientSecret": "Np62TWPwjM2IeCyl", "enableStreamJob": true, "environment": "6JBcLrLcYqQ5NAkf", "streamName": "5zcLUWflgM2UuT8j", "streamPartnerName": "zsZFkprRY3xxRSUx"}'
"""

result, error = update_playstation_iap_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
