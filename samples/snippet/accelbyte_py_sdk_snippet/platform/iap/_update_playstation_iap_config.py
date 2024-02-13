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

Example: '{"backOfficeServerClientId": "zEvU7749bOducCOe", "backOfficeServerClientSecret": "zHYyL0VAbS6b4r7m", "enableStreamJob": false, "environment": "NF1FqN5EL7SH6Wht", "streamName": "NW88vDDu74O7EBzN", "streamPartnerName": "S7DH4So0MsvdQkaO"}'
"""

result, error = update_playstation_iap_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
