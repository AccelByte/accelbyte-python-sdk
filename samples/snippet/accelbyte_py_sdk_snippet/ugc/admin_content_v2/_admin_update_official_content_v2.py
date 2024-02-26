import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_official_content_v2
from accelbyte_py_sdk.api.ugc.models import ModelsAdminUpdateContentRequestV2
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateContentResponseV2
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsAdminUpdateContentRequestV2
custom_attributes: Dict[str, Any]
name: str
share_code: str
sub_type: str
tags: List[str]
type_: str

Example: '{"customAttributes": {"AUdQQ8YjyS5vlKq9": {}, "4iN13mWACeatsu4W": {}, "H1cHFr9CfsZdRbIV": {}}, "name": "TojLr3nm2c5E5DvN", "shareCode": "y0H1CaN0TmtNg8r4", "subType": "7VtxswSYG9Z7TDpu", "tags": ["FUjR45R49LnAF4zk", "ogd6WUf8pwIRv0Ul", "KpFMhGIVaFklxKjk"], "type": "2dZ44TXmHQabRYiH"}'
"""

result, error = admin_update_official_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
