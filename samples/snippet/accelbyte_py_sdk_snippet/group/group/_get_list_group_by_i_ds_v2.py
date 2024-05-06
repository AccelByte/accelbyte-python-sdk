import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import get_list_group_by_i_ds_v2
from accelbyte_py_sdk.api.group.models import ModelsGetGroupListRequestV2
from accelbyte_py_sdk.api.group.models import ModelsGetGroupsResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsGetGroupListRequestV2
group_i_ds: List[str]

Example: '{"groupIDs": ["mz5na794k6hUwqGS", "ntHxYkPhKmA6yOs4", "1tTdcq5OnWdrMywG"]}'
"""

result, error = get_list_group_by_i_ds_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
