import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import public_get_languages
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = public_get_languages(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
