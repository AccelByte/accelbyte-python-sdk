import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_get_input_validation_by_field
from accelbyte_py_sdk.api.iam.models import ModelInputValidationConfigVersion
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_get_input_validation_by_field(
    field=field,
    x_additional_headers=x_additional_headers,
)
