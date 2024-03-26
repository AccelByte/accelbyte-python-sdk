import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import get_list_group_by_i_ds_admin_v2
from accelbyte_py_sdk.api.group.models import ModelsGetGroupListRequestV2
from accelbyte_py_sdk.api.group.models import ModelsGetGroupsResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsGetGroupListRequestV2
group_i_ds: List[str]

Example: '{"groupIDs": ["zJKBS6Y6fwRvkliL", "REjh0GJ2jFjJLCW8", "DShoyXtC3SXFO0Ek"]}'
"""

result, error = get_list_group_by_i_ds_admin_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
