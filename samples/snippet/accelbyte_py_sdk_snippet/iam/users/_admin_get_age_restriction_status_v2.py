import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_age_restriction_status_v2
from accelbyte_py_sdk.api.iam.models import ModelAgeRestrictionResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_age_restriction_status_v2(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
