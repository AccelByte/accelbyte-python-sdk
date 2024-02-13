import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_get_input_validations
from accelbyte_py_sdk.api.iam.models import ModelInputValidationsPublicResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_get_input_validations(
    default_on_empty=default_on_empty,
    language_code=language_code,
    x_additional_headers=x_additional_headers,
)
