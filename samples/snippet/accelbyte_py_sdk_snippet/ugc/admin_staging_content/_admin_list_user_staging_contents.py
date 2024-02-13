import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_list_user_staging_contents
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedListStagingContentResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = admin_list_user_staging_contents(
    user_id=user_id,
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    status=status,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
