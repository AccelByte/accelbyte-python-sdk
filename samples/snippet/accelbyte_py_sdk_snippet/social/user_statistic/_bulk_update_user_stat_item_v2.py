import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_update_user_stat_item_v2
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import BulkUserStatItemUpdate
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkUserStatItemUpdate]
additional_data: Dict[str, Any]
additional_key: str
stat_code: str
update_strategy: str
user_id: str
value: float

Example: '[{"additionalData": {"QuIVeudVvpLYkGxw": {}, "dFhBZXsPRbtRE0hg": {}, "3Vf4OqDtxg6SwcHV": {}}, "additionalKey": "RwjQQvmmjLNSpRN0", "statCode": "3TzT3rwlbCV4TQSH", "updateStrategy": "INCREMENT", "userId": "6M9jT6Is2wyW00bN", "value": 0.4786202519959053}, {"additionalData": {"PyJUDUQZPnfJkRcs": {}, "7nYKmW5IvvjLgGNm": {}, "WAisNfbObEcc8Cfq": {}}, "additionalKey": "6Fsojx6a6YrwnOph", "statCode": "NuvirjFV9mp7JkZF", "updateStrategy": "MAX", "userId": "320S2nvvkm6nuox1", "value": 0.34841271948983465}, {"additionalData": {"ksFbBZUu5PXDxVAG": {}, "EVCNMOedMHDLbTRi": {}, "LRPbOSoN3Eqkxntb": {}}, "additionalKey": "uOpwvsROgtLZdQS9", "statCode": "x1bi6gC7G7HJYlaT", "updateStrategy": "OVERRIDE", "userId": "IIINhBjWI1vF1pSu", "value": 0.35754313016247874}]'
"""

result, error = bulk_update_user_stat_item_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
