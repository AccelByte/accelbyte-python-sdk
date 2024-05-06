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

Example: '{"customAttributes": {"PImzzhD0XR2Ys9JD": {}, "sEHOw1GeKD7bACxc": {}, "SfBD8tsVDzurdJtL": {}}, "name": "898dujAQ5Ga1xZHG", "shareCode": "1rcpN2t6N7afIOzf", "subType": "fXOC54Ff8ltcrJII", "tags": ["uQm2zrJiQJoG76AD", "qOCqDjby2PpZH1fz", "W2JSu183rX1EwDYo"], "type": "RlrPy24qAstwfr0W"}'
"""

result, error = admin_update_official_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
