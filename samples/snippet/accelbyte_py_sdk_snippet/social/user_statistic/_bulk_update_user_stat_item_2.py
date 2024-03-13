import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_update_user_stat_item_2
from accelbyte_py_sdk.api.social.models import BulkStatItemUpdate
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkStatItemUpdate]
additional_data: Dict[str, Any]
stat_code: str
update_strategy: str
value: float

Example: '[{"additionalData": {"2RqOupVAPA0q1e0q": {}, "Q2QI5Tt0XXdNOekY": {}, "POzfGaHuZNJLibdE": {}}, "statCode": "KMFpVY2IWWHvA55o", "updateStrategy": "INCREMENT", "value": 0.546588715048972}, {"additionalData": {"BVrdinGsoRw61zn5": {}, "pb4sUhNmUAxOkxCE": {}, "g9JAh37LYlxklKf5": {}}, "statCode": "tYNviy02hVmcOOOM", "updateStrategy": "MAX", "value": 0.4678510870935705}, {"additionalData": {"szJkhaQOwEl5xcL3": {}, "fjldTF7QUefvUd2A": {}, "x1CTDtmEjUgDVJ99": {}}, "statCode": "biCZeCVdeTwZAC6p", "updateStrategy": "MIN", "value": 0.6192244326130097}]'
"""

result, error = bulk_update_user_stat_item_2(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
