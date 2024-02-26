import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_age_restriction_config_v3
from accelbyte_py_sdk.api.iam.models import ModelAgeRestrictionRequestV3
from accelbyte_py_sdk.api.iam.models import ModelAgeRestrictionResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelAgeRestrictionRequestV3
age_restriction: int
enable: bool

Example: '{"ageRestriction": 79, "enable": true}'
"""

result, error = admin_update_age_restriction_config_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
