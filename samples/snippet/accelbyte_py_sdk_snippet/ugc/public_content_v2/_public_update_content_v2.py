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

Example: '{"customAttributes": {"izsvCmSwRF5KVC7B": {}, "SI0i8i0hyBrhC6IA": {}, "qLzYTRdcQRfr22Xq": {}}, "name": "fZlPz7vDZDZaoluU", "subType": "uGw37lwNzc8oGD7p", "tags": ["8py2WwkwGJZLLEPp", "b7hQAEfaaf3HMDnp", "ClBdqNBgBkUhLXwY"], "type": "Lw4rf9K0yueXGUFc"}'
"""

result, error = public_update_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
