import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_create_content_v2
from accelbyte_py_sdk.api.ugc.models import ModelsContentRequestV2
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponseV2
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsContentRequestV2
content_type: str
custom_attributes: Dict[str, Any]
file_extension: str
name: str
sub_type: str
tags: List[str]
type_: str

Example: '{"contentType": "H39b4GeS7ZxEVY1u", "customAttributes": {"mR0J4YudK72tuj1h": {}, "aObOCQsqfweXoCUs": {}, "hH0OIoX5TSaSsfVQ": {}}, "fileExtension": "lJybzUi9Eogb9YtN", "name": "CK2SyPnYCwId4yca", "subType": "gP5i0FMrLIucIQzo", "tags": ["Qxw3eO4XWCZZBFD4", "DtVFXgUGgRoD5Kox", "mou4rpmA8HfIpnlO"], "type": "MLAQYhnYGHlGYku4"}'
"""

result, error = public_create_content_v2(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
