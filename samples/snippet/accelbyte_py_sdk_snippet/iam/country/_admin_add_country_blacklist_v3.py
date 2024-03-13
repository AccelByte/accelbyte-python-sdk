import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_add_country_blacklist_v3
from accelbyte_py_sdk.api.iam.models import ModelCountryBlacklistRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelCountryBlacklistRequest
blacklist: List[str]

Example: '{"blacklist": ["ljoBILASDRRdlTg7", "rtrYpqzQ5aQnsKaf", "TgrtD8Z1eRnRperD"]}'
"""

result, error = admin_add_country_blacklist_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
