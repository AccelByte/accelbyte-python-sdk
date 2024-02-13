import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import get_public_followers
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedCreatorOverviewResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = get_public_followers(
    user_id=user_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
