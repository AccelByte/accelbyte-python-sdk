import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import get_group_list_admin_v1
from accelbyte_py_sdk.api.group.models import ModelsGetGroupsListResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

result, error = get_group_list_admin_v1(
    configuration_code=configuration_code,
    group_name=group_name,
    group_region=group_region,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
