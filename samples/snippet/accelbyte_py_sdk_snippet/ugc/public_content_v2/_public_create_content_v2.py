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

Example: '{"contentType": "TLB87j3hFuTCziSW", "customAttributes": {"Aklzy6lUfY8fTVRI": {}, "dUjmDXv5372ThmAa": {}, "SbLijmaA9qe6DBvn": {}}, "fileExtension": "DNpbVQh1weD225O0", "name": "e0i9KSFiNRPLjrrl", "subType": "hTld1Lybm5Edkpcy", "tags": ["RwoVWG0C4ixvPhsB", "p9juPzy6WbkWLJv1", "KSuEJzrHBWsh4BYZ"], "type": "Q85pzj022f6TaHQi"}'
"""

result, error = public_create_content_v2(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
