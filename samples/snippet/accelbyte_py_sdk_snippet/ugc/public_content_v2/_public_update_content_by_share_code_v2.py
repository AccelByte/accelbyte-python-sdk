import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_update_content_by_share_code_v2
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponseV2
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateContentRequestV2
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUpdateContentRequestV2
custom_attributes: Dict[str, Any]
name: str
sub_type: str
tags: List[str]
type_: str

Example: '{"customAttributes": {"U7N0vGi6KTzPBuEA": {}, "G8pTzLQL1pfoQ6EV": {}, "gQE4lHQgDa2NYtRy": {}}, "name": "cbfLUjroN3QkrJwI", "subType": "uxKkdLH15FiQOn91", "tags": ["rxT1nZWqDvfQOQQ0", "Jd6l0Kp4g7rQNtf2", "voKJ0do3lV7UX9Fb"], "type": "7bYO38vM1rbpsVap"}'
"""

result, error = public_update_content_by_share_code_v2(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
