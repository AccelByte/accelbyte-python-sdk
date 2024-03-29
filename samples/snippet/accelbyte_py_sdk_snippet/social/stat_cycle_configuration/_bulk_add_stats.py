import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_add_stats
from accelbyte_py_sdk.api.social.models import BulkCycleStatsAdd
from accelbyte_py_sdk.api.social.models import BulkStatCycleOperationResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: BulkCycleStatsAdd
stat_codes: List[str]

Example: '{"statCodes": ["MC5hzK3BBvg7dea9", "JZGRJtWHAwuzYNbR", "o4Aqcq401KVi5bjc"]}'
"""

result, error = bulk_add_stats(
    cycle_id=cycle_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
