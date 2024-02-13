import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_search_user_v3
from accelbyte_py_sdk.api.iam.models import ModelPublicUserInformationResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_search_user_v3(
    by=by,
    limit=limit,
    offset=offset,
    platform_by=platform_by,
    platform_id=platform_id,
    query=query,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
