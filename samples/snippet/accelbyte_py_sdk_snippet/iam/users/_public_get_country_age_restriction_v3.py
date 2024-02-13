import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_get_country_age_restriction_v3
from accelbyte_py_sdk.api.iam.models import ModelCountryV3Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_get_country_age_restriction_v3(
    country_code=country_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
