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

Example: '{"contentType": "fdYX4ytg4cBwUaN9", "customAttributes": {"bySJK4z5vu634jqA": {}, "wZF4MmFFBpMvKWaw": {}, "vFTG6ZJHPhfjwjOO": {}}, "fileExtension": "ZORehlxpOLrkRK4z", "name": "jl39uSSDhfxBUD6Y", "subType": "TUkj2Tw9DpkN6Nby", "tags": ["QozNnkGabXSPrWGl", "3fm6Id8yDoK8jGiQ", "X3TaKL5VjHdI7AoS"], "type": "M8eMVR7NYLSsfRCM"}'
"""

result, error = public_create_content_v2(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
