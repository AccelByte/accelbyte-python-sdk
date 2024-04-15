import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import bulk_get_user_season_progression
from accelbyte_py_sdk.api.seasonpass.models import BulkUserProgressionRequest
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import UserSeasonSummary

"""
body:
Definition: BulkUserProgressionRequest
user_ids: List[str]

Example: '{"userIds": ["SR3E7n9RHBzSBt95", "PSaUg2zBBlR4jtRf", "eHvpS17sndGh5bBl"]}'
"""

result, error = bulk_get_user_season_progression(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
