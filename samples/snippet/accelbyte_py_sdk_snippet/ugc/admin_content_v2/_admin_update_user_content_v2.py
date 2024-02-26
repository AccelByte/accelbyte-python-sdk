import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_user_content_v2
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

Example: '{"customAttributes": {"QDPM6yjEsjeXjlV6": {}, "8eXCE2TBKveevzyt": {}, "HueV6xLA8XuUuhRB": {}}, "name": "3cbXodbb3aUsFhib", "shareCode": "oT4sPpSoGkBPAQIA", "subType": "Tap2WSBRoBchepxp", "tags": ["RR9ctSpkhu66iwe7", "p7LYBm2FzyOq4LSP", "BSiJ3rG1oH355EKO"], "type": "qbv0aFsRc5GxRSkT"}'
"""

result, error = admin_update_user_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
