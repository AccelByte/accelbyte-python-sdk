import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_country_age_restriction_v3
from accelbyte_py_sdk.api.iam.models import ModelCountryAgeRestrictionV3Request
from accelbyte_py_sdk.api.iam.models import ModelCountryV3Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelCountryAgeRestrictionV3Request
age_restriction: int

Example: '{"ageRestriction": 35}'
"""

result, error = admin_update_country_age_restriction_v3(
    body=body,
    country_code=country_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
