import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import get_followed_users
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedCreatorOverviewResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = get_followed_users(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
