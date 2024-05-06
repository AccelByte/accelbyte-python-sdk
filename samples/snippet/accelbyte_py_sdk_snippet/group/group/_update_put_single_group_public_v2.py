import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import update_put_single_group_public_v2
from accelbyte_py_sdk.api.group.models import ModelsGroupResponseV1
from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupRequestV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsUpdateGroupRequestV1
custom_attributes: ModelsUpdateGroupRequestV1CustomAttributes
Definition: ModelsUpdateGroupRequestV1CustomAttributes
group_description: str
group_icon: str
group_name: str
group_region: str
group_type: str

Example: '{"customAttributes": {}, "groupDescription": "EPO0W6bX7KY13r0d", "groupIcon": "3AdJsSzj1O6PC2Hu", "groupName": "8AlMF7OgFytLTIXc", "groupRegion": "gaI6iNFIhjOsljd1", "groupType": "PUBLIC"}'
"""

result, error = update_put_single_group_public_v2(
    body=body,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
