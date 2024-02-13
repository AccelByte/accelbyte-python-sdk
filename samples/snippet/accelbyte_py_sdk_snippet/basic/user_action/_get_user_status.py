import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import get_user_status
from accelbyte_py_sdk.api.basic.models import ADTOObjectForEqu8UserStatus
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = get_user_status(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
