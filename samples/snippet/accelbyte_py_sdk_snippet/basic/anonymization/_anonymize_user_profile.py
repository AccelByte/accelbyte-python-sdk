import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import anonymize_user_profile
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = anonymize_user_profile(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
