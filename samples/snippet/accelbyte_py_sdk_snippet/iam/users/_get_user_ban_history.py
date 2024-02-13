import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_user_ban_history
from accelbyte_py_sdk.api.iam.models import ModelUserBanResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_user_ban_history(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
