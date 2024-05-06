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

Example: '{"customAttributes": {"zn55jk2016TiDiM5": {}, "Oq8vtaSmNJeMcdXO": {}, "K8jMnPXtHhbMboKS": {}}, "name": "FK97QTFY8J1rux0l", "subType": "WYtSODXbr7kO5tC2", "tags": ["KzUedvuKIVOXhjkt", "1qzcbBBSN0KqpBoI", "2qTfUtjXvg6dqEVV"], "type": "gyukuYx24r00Mmpz"}'
"""

result, error = public_update_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
