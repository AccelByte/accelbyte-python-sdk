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

Example: '{"customAttributes": {"WQ8D4l01icp5S66t": {}, "Al1VqsssN5fVCNGM": {}, "FJN8H6PNQF09djdF": {}}, "name": "DPjXkC2SEYvMBZKU", "subType": "JYZdOnN0vCdoTDiz", "tags": ["jT1yLoc45x1hfjat", "V4toaz8ajGysCiCz", "OL2bvep4ECwrZA2i"], "type": "6qtllVt5LcaebKMy"}'
"""

result, error = public_update_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
