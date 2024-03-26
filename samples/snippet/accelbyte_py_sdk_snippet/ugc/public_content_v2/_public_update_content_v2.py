import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_update_content_v2
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateContentRequestV2
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateContentResponseV2
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUpdateContentRequestV2
custom_attributes: Dict[str, Any]
name: str
sub_type: str
tags: List[str]
type_: str

Example: '{"customAttributes": {"L65lz6g289b8e3UK": {}, "Calez9CDjd9O3anp": {}, "cl6wsOyOe0OCqskx": {}}, "name": "xEznMX0xkeJsJokd", "subType": "x4RlsDx7ao5xOlOl", "tags": ["EUVxiKqaKSrxQqDJ", "YljTJtciWyBY51wY", "Zy14NIi3prDWiADA"], "type": "XzKLhfVB1OAo0yZs"}'
"""

result, error = public_update_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
