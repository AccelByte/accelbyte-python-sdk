import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import get_pass
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import PassInfo

result, error = get_pass(
    code=code,
    season_id=season_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
