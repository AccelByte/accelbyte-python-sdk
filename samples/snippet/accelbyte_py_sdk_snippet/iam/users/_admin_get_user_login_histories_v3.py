import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_user_login_histories_v3
from accelbyte_py_sdk.api.iam.models import ModelLoginHistoriesResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_user_login_histories_v3(
    user_id=user_id,
    after=after,
    before=before,
    limit=limit,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
