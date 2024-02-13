import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_user_login_histories
from accelbyte_py_sdk.api.iam.models import ModelLoginHistoriesResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_user_login_histories(
    user_id=user_id,
    after=after,
    before=before,
    limit=limit,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
