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

Example: '{"userIds": ["jRN4O2dcjaDIkphT", "0oNRgrFtGG6h0IEk", "yW7gp8ukaYAOlxFc"]}'
"""

result, error = bulk_get_user_season_progression(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
