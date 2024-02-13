import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_bans_type_v3
from accelbyte_py_sdk.api.iam.models import AccountcommonBansV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_bans_type_v3(
    x_additional_headers=x_additional_headers,
)
