import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import public_get_current_season
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import LocalizedSeasonInfo

result, error = public_get_current_season(
    language=language,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
