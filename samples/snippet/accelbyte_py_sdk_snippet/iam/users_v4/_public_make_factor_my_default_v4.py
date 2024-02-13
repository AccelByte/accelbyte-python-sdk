import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_make_factor_my_default_v4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_make_factor_my_default_v4(
    factor=factor,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
