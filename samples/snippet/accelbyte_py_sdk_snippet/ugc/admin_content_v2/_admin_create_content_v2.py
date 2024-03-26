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

Example: '{"contentType": "KVNlu7bPbzAVQyqv", "customAttributes": {"Mi4mqmoHfki9szdT": {}, "XjC2wgAHF4EDvsIr": {}, "S0kWTBilTKJkCkiU": {}}, "fileExtension": "MkzIts0JC9rCbflR", "name": "Q6MBi9HNgrTFEbJq", "shareCode": "B7q2cLFSuMAvc5pz", "subType": "O8E0UzXyl6aq69Q6", "tags": ["d6o3uQ1fMBqJVLlU", "cBFUKiSavlbgYhSD", "xp7bMkrFEgDltDcq"], "type": "sDoy6UQTqySpzPug"}'
"""

result, error = admin_create_content_v2(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
