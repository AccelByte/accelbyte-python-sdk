import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import clone_season
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import SeasonCloneRequest
from accelbyte_py_sdk.api.seasonpass.models import SeasonInfo
from accelbyte_py_sdk.api.seasonpass.models import ValidationErrorEntity

"""
body:
Definition: SeasonCloneRequest
end: str
name: str
start: str

Example: '{"end": "1991-05-20T00:00:00Z", "name": "y6m0thIlb703xEP4", "start": "1992-10-30T00:00:00Z"}'
"""

result, error = clone_season(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
