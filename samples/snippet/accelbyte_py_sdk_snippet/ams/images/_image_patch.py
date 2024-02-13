import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import image_patch
from accelbyte_py_sdk.api.ams.models import ApiImageDetails
from accelbyte_py_sdk.api.ams.models import ApiImageUpdate
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

"""
body:
Definition: ApiImageUpdate
added_tags: List[str]
is_protected: bool
name: str
removed_tags: List[str]

Example: '{"addedTags": ["oymwfISVzTQRLBzA", "IfFtrANctGlKzl3d", "0xy4GeLrBkvFvZe8"], "isProtected": true, "name": "AQmQPhvzbbFWecqX", "removedTags": ["OGPgjuSpTUCGowN2", "DKnyP3iHP2NtyEx2", "YweR56xfs5Qm0BSt"]}'
"""

result, error = image_patch(
    body=body,
    image_id=image_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
