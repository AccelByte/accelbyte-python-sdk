import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import (
    public_get_link_headless_account_to_my_account_conflict_v3,
)
from accelbyte_py_sdk.api.iam.models import ModelGetLinkHeadlessAccountConflictResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_get_link_headless_account_to_my_account_conflict_v3(
    one_time_link_code=one_time_link_code,
    x_additional_headers=x_additional_headers,
)
