import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_create_content_v2
from accelbyte_py_sdk.api.ugc.models import ModelsAdminContentRequestV2
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponseV2
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsAdminContentRequestV2
content_type: str
custom_attributes: Dict[str, Any]
file_extension: str
name: str
share_code: str
sub_type: str
tags: List[str]
type_: str

Example: '{"contentType": "5WAdSPK2C9oYuo8O", "customAttributes": {"R2PVnYGPs0sKF2vu": {}, "5pZyvPJDsfNLY5Du": {}, "XbkAdgZXY7OW1MQa": {}}, "fileExtension": "0bB07CPPVph8XTwv", "name": "QEXY4CNzQdyS1gGB", "shareCode": "0rt7ECvg3bfgcULc", "subType": "4M3cxHzLyJpEHEh8", "tags": ["m9RpWoePNIevBYds", "Q90IVuln66C6affD", "1ulXZzJAW2wnlBc6"], "type": "sN933P92MMqsMAS6"}'
"""

result, error = admin_create_content_v2(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
