import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import sync_xbox_dlc
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import XblDLCSyncRequest

"""
body:
Definition: XblDLCSyncRequest
xsts_token: str

Example: '{"xstsToken": "7je6NjXkFtg9xLmM"}'
"""

result, error = sync_xbox_dlc(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
