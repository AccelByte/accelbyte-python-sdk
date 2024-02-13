import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionbrowser import update_settings
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsSessionResponse
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsUpdateSettingsRequest
from accelbyte_py_sdk.api.sessionbrowser.models import RestapiErrorResponseV2

"""
body:
Definition: ModelsUpdateSettingsRequest

Example: '{}'
"""

result, error = update_settings(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
