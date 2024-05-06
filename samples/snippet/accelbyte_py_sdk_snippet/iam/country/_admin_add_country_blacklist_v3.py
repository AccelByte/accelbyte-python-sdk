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

Example: '{"blacklist": ["yHT93SLQdA2knpwc", "LVPl00KU5PwvLOkn", "ui6N1YQtfCgHK4a3"]}'
"""

result, error = admin_add_country_blacklist_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
