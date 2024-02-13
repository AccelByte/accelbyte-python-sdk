import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_query_third_platform_link_history_v3
from accelbyte_py_sdk.api.iam.models import ModelLinkingHistoryResponseWithPaginationV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_query_third_platform_link_history_v3(
    platform_id=platform_id,
    limit=limit,
    offset=offset,
    platform_user_id=platform_user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
