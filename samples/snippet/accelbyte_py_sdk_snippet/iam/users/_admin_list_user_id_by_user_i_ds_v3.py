import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_list_user_id_by_user_i_ds_v3
from accelbyte_py_sdk.api.iam.models import ModelListUserInformationResult
from accelbyte_py_sdk.api.iam.models import ModelUserIDsRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserIDsRequest
user_ids: List[str]

Example: '{"userIds": ["moRukjEayGWWvEk1", "KuJueMEmvI6IeNcX", "j14Z8rH5VC9FxzRj"]}'
"""

result, error = admin_list_user_id_by_user_i_ds_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
