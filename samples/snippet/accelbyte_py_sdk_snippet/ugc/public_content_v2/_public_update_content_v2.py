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

Example: '{"customAttributes": {"l2t9sufSJrY1Qff9": {}, "FbgVMIxBVKpQE6jZ": {}, "s8Ga3WaT1JoADqoH": {}}, "name": "qRvCbFSfXg1XiDsn", "subType": "i2OtoYO7CPq38iuo", "tags": ["n7GeXMBw4sqwKLxi", "hq7cC34yv8LXjaes", "z0ybyoDabsXuVvXq"], "type": "bKbQOdW2PMPRdkkA"}'
"""

result, error = public_update_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
