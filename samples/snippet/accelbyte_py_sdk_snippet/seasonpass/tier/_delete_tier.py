import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import delete_tier
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity

result, error = delete_tier(
    id_=id_,
    season_id=season_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
