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

Example: '{"contentType": "QvH6DUXv5pgHcMjC", "customAttributes": {"0zQsrrKEd9NrJnPU": {}, "EUjsxzn17AA3xEcP": {}, "p2dLqkrrzgtUv0Ac": {}}, "fileExtension": "L6QxCngho6dfpDip", "name": "xOiVCddoDg5jTbaR", "subType": "dvjPZKolAMakJflw", "tags": ["ffuvZicfRY4wstj6", "hLgtZriByxMWoVXO", "1XAyd1a0kXrwlueI"], "type": "3uoRGqVuQ1TPidSi"}'
"""

result, error = public_create_content_v2(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
