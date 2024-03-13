import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import qo_s_regions_update
from accelbyte_py_sdk.api.ams.models import ApiUpdateServerRequest
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

"""
body:
Definition: ApiUpdateServerRequest
status: str

Example: '{"status": "GFgT5kTwI1gA26M3"}'
"""

result, error = qo_s_regions_update(
    body=body,
    region=region,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
