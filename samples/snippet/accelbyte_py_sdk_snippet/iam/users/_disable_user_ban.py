import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import disable_user_ban
from accelbyte_py_sdk.api.iam.models import ModelUserBanResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = disable_user_ban(
    ban_id=ban_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
