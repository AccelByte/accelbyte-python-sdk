import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import update_my_zip_code
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UserZipCode
from accelbyte_py_sdk.api.basic.models import UserZipCodeUpdate
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = update_my_zip_code(
    user_zip_code_update=user_zip_code_update,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
