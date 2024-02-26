import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_get_stat_cycle_1
from accelbyte_py_sdk.api.social.models import BulkStatCycleRequest
from accelbyte_py_sdk.api.social.models import BulkStatCycleResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: BulkStatCycleRequest
cycle_ids: List[str]

Example: '{"cycleIds": ["XwizFU9vabkmjHbO", "EvO0IiZH6yJRqBR7", "HW6bPlHPNRstdzTB"]}'
"""

result, error = bulk_get_stat_cycle_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
