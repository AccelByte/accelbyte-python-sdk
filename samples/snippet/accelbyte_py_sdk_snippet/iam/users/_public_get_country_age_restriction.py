import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_get_country_age_restriction
from accelbyte_py_sdk.api.iam.models import AccountcommonCountry
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_get_country_age_restriction(
    country_code=country_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
