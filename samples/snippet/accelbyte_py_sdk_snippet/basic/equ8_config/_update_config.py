import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import update_config
from accelbyte_py_sdk.api.basic.models import ADTOForUpdateEqu8ConfigAPICall
from accelbyte_py_sdk.api.basic.models import Equ8Config
from accelbyte_py_sdk.api.basic.models import ErrorEntity

"""
body:
Definition: ADTOForUpdateEqu8ConfigAPICall
api_key: str

Example: '{"apiKey": "mraGPunfL5qNJVMR"}'
"""

result, error = update_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
