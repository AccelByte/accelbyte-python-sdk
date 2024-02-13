import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_make_factor_my_default_v4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_make_factor_my_default_v4(
    factor=factor,
    x_additional_headers=x_additional_headers,
)
