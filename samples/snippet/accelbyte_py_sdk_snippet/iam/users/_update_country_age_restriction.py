import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_country_age_restriction
from accelbyte_py_sdk.api.iam.models import ModelCountry
from accelbyte_py_sdk.api.iam.models import ModelCountryAgeRestrictionRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelCountryAgeRestrictionRequest
age_restriction: int

Example: '{"AgeRestriction": 56}'
"""

result, error = update_country_age_restriction(
    body=body,
    country_code=country_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
