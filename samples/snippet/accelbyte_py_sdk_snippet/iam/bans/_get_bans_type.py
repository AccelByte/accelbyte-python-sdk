import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_bans_type
from accelbyte_py_sdk.api.iam.models import AccountcommonBans
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_bans_type(
    x_additional_headers=x_additional_headers,
)
