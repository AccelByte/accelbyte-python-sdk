import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_country_blacklist_v3
from accelbyte_py_sdk.api.iam.models import ModelCountryBlacklistResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_country_blacklist_v3(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
