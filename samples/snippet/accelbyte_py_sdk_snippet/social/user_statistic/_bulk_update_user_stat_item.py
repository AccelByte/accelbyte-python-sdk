import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_update_user_stat_item
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

Example: '[{"additionalData": {"DYBXYTbrdJq3pYPd": {}, "Im5YRZoIXWXGxbfU": {}, "VAmM01CtTZ4rFRXI": {}}, "statCode": "rhRzhVtqa3twnR1E", "updateStrategy": "INCREMENT", "value": 0.8071504412502795}, {"additionalData": {"xBL7xMXCIC4l1xeX": {}, "n19maxwHc23GVo4q": {}, "sQiT3t9VfvTmBuUM": {}}, "statCode": "eiW9ad4apMwq1xV6", "updateStrategy": "INCREMENT", "value": 0.2841798406874867}, {"additionalData": {"iomKuLn4eolwSH3M": {}, "m2MYy4gmn0FD2y41": {}, "jw6BPj2C69XmgLKV": {}}, "statCode": "a2qkH0aXexa1cz80", "updateStrategy": "MIN", "value": 0.16368786130656243}]'
"""

result, error = bulk_update_user_stat_item(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
