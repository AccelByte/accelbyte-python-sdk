import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_publisher_user
from accelbyte_py_sdk.api.iam.models import ModelGetPublisherUserResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_publisher_user(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
