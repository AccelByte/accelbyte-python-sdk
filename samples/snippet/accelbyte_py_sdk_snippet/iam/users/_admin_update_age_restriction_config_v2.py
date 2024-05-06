import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_age_restriction_config_v2
from accelbyte_py_sdk.api.iam.models import ModelAgeRestrictionRequest
from accelbyte_py_sdk.api.iam.models import ModelAgeRestrictionResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelAgeRestrictionRequest
age_restriction: int
enable: bool

Example: '{"AgeRestriction": 67, "Enable": true}'
"""

result, error = admin_update_age_restriction_config_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
