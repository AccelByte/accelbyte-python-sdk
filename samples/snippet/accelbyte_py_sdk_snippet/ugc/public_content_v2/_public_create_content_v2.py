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

Example: '{"contentType": "i4Dljc2MuYXgPKqD", "customAttributes": {"enFKQ7UfoOcFkj4I": {}, "t5O2KCxMOIFTuKIE": {}, "JBi6ZKYqPPbcLDjM": {}}, "fileExtension": "vwMYQ7q7Ti00vh93", "name": "AXDLqoZK9gVtizC3", "subType": "zyllEWIqp345elI1", "tags": ["dZbuNuRltnVThtRC", "wxqHQ1LiJlXa4Tsl", "U8aV1KzXQ6J5U0Tf"], "type": "jCqbL72HJCjrlG2Y"}'
"""

result, error = public_create_content_v2(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
