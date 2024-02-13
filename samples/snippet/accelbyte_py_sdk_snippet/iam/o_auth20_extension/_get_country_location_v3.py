import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_country_location_v3
from accelbyte_py_sdk.api.iam.models import OauthmodelCountryLocationResponse

result, error = get_country_location_v3(
    x_additional_headers=x_additional_headers,
)
