import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import reorder_tier
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import Tier
from accelbyte_py_sdk.api.seasonpass.models import TierReorder
from accelbyte_py_sdk.api.seasonpass.models import ValidationErrorEntity

"""
body:
Definition: TierReorder
new_index: int

Example: '{"newIndex": 86}'
"""

result, error = reorder_tier(
    id_=id_,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
