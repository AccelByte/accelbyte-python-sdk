import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_user_content_file_location
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateContentResponseV2
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateFileLocationRequest
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUpdateFileLocationRequest
file_extension: str
file_location: str

Example: '{"fileExtension": "l5e9uSkFkPbt4fpC", "fileLocation": "3jrlM1DnisTtOeSA"}'
"""

result, error = admin_update_user_content_file_location(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
