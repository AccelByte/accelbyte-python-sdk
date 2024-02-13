import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import delete_country_group
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = delete_country_group(
    country_group_code=country_group_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
