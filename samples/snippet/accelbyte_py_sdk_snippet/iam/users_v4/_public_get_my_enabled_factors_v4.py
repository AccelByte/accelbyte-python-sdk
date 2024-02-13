import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_get_my_enabled_factors_v4
from accelbyte_py_sdk.api.iam.models import ModelEnabledFactorsResponseV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_get_my_enabled_factors_v4(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
