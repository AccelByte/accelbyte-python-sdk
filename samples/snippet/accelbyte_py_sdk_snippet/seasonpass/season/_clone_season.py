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

Example: '{"end": "1977-04-17T00:00:00Z", "name": "B2MxtxUfIsxI4cgU", "start": "1989-01-23T00:00:00Z"}'
"""

result, error = clone_season(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
