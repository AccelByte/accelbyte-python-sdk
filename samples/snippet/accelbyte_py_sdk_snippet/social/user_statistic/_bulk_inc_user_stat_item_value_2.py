import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_inc_user_stat_item_value_2
from accelbyte_py_sdk.api.social.models import BulkStatItemInc
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkStatItemInc]
inc: float
stat_code: str

Example: '[{"inc": 0.4903061101996631, "statCode": "zlvcOOZGFle1SMtf"}, {"inc": 0.04186290473616805, "statCode": "E6PqxgyMCrEeRHlp"}, {"inc": 0.7183732218075921, "statCode": "4u0BHsDr7DV6mtMX"}]'
"""

result, error = bulk_inc_user_stat_item_value_2(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
