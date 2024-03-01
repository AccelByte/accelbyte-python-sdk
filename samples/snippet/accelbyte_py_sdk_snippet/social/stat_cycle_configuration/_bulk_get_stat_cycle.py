import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_get_stat_cycle
from accelbyte_py_sdk.api.social.models import BulkStatCycleRequest
from accelbyte_py_sdk.api.social.models import BulkStatCycleResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: BulkStatCycleRequest
cycle_ids: List[str]

Example: '{"cycleIds": ["62Qzn7bgER0B116e", "gFCtXq4iY6tXGcZi", "ySSio8a7Tr9eP4kG"]}'
"""

result, error = bulk_get_stat_cycle(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)