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

Example: '{"customAttributes": {"VDrmT19ssLgy8hHa": {}, "2Jld6fqI1ohZlINQ": {}, "wnCSLA7rUgWtuguh": {}}, "name": "UYSMs6URXM8vasVw", "shareCode": "rx4c2a7y44srQX05", "subType": "9XVKzsHw5JxoMhvy", "tags": ["3hw607MGSsM7PdW0", "qWnBjh8frw7ahYIf", "Vb4Nzfc9vmBR6lh0"], "type": "CVnKbTK9gYNv8td6"}'
"""

result, error = admin_update_user_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
