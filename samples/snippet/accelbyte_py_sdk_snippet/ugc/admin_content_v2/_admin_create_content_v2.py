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

Example: '{"contentType": "SE2FrRQzEeFOCc1o", "customAttributes": {"K63crPXtleL0I1bi": {}, "klkHhSBfIMdgKBjm": {}, "T10XCGwnvNru0wnL": {}}, "fileExtension": "rqCJ9nZrKbAQ6EJw", "name": "ujN0LoARFFUmmDDu", "shareCode": "M4cmwzLtv42Eu3tZ", "subType": "o96p5rPuEZFRJ1s3", "tags": ["poJk2e3YlxDHF6NR", "jcl9LMTlZoA2n6rD", "NNAg44Hc4Ka7URG6"], "type": "oikeFXLhRCGMCpYn"}'
"""

result, error = admin_create_content_v2(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
