import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import exists_any_pass_by_pass_codes
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import Ownership

result, error = exists_any_pass_by_pass_codes(
    user_id=user_id,
    pass_codes=pass_codes,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
