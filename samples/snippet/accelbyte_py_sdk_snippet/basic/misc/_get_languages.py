import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import get_languages
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = get_languages(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
