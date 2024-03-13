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

Example: '{"customAttributes": {"X2kzxWhB80Q0BuzR": {}, "r1V2pz4XSEWkD90D": {}, "8cSaOetjPdAe1swg": {}}, "name": "akV9wQDExQyeSpKe", "shareCode": "KTM8gvsCglfAbD01", "subType": "hpW9wvLUxyeYEDRC", "tags": ["7D7SzKP4D9dZgJXw", "R7IZI0RiQ2E0vjpO", "AtADZdwyTQPBfY9b"], "type": "Gwf41Touk9r1wJ5F"}'
"""

result, error = admin_update_user_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
