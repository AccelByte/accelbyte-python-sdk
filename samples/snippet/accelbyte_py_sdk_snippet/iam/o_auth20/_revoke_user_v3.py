import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import revoke_user_v3
from accelbyte_py_sdk.api.iam.models import OauthmodelErrorResponse

result, error = revoke_user_v3(
    user_id=user_id,
    include_game_namespace=include_game_namespace,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
