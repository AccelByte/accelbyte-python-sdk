import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import get_current_season
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import SeasonSummary

result, error = get_current_season(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
