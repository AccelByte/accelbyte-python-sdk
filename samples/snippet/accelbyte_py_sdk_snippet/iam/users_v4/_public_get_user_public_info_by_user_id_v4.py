import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_get_user_public_info_by_user_id_v4
from accelbyte_py_sdk.api.iam.models import ModelUserPublicInfoResponseV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_get_user_public_info_by_user_id_v4(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
