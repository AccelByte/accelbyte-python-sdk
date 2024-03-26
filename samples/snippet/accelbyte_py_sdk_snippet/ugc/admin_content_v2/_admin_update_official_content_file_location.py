import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_official_content_file_location
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateContentResponseV2
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateFileLocationRequest
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUpdateFileLocationRequest
file_extension: str
file_location: str

Example: '{"fileExtension": "u6FYeaWYGhKxISHg", "fileLocation": "SUGKbse2HHQolb9l"}'
"""

result, error = admin_update_official_content_file_location(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
