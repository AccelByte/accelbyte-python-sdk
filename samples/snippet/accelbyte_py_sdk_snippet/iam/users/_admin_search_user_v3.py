import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_search_user_v3
from accelbyte_py_sdk.api.iam.models import ModelSearchUsersResponseWithPaginationV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_search_user_v3(
    by=by,
    end_date=end_date,
    include_total=include_total,
    limit=limit,
    offset=offset,
    platform_by=platform_by,
    platform_id=platform_id,
    query=query,
    skip_login_queue=skip_login_queue,
    start_date=start_date,
    test_account=test_account,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
