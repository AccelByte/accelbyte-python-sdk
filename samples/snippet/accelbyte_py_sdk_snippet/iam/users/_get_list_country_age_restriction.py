import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_list_country_age_restriction
from accelbyte_py_sdk.api.iam.models import AccountcommonCountryAgeRestriction
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_list_country_age_restriction(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
