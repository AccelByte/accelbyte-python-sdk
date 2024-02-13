import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import export_season
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity

result, error = export_season(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
