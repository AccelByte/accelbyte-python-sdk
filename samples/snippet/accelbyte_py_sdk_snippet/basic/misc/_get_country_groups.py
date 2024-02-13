import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import get_country_groups
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import RetrieveCountryGroupResponse
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = get_country_groups(
    group_code=group_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
