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

Example: '{"cycleIds": ["TDIoFMy9t7cHeiUd", "MKaYjMmv19dmDJ4O", "As6DDm2jVy8sH0Ab"]}'
"""

result, error = bulk_get_stat_cycle(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
