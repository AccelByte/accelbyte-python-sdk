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

Example: '[{"additionalData": {"O2yyTWpB114KK0Jc": {}, "PV4jlRowHNUxz5u5": {}, "Gi4LRo0X2ORL2SgC": {}}, "statCode": "kPSFWYTRcdJG3dQ1", "updateStrategy": "OVERRIDE", "value": 0.842055420869135}, {"additionalData": {"LnPdCDwWwZh1DcrR": {}, "TaWnMuo0um6b32zX": {}, "YqCrnpG61A7SxOG8": {}}, "statCode": "NKzDhwBDmzJnv9Gj", "updateStrategy": "OVERRIDE", "value": 0.9172547204148453}, {"additionalData": {"0yrE1biEkIRgm0cp": {}, "WllR4xd6RhO1b8XU": {}, "dMJJWFLFKV5un0Ql": {}}, "statCode": "QjdpzAwYT2Gl3WdC", "updateStrategy": "INCREMENT", "value": 0.06892479991125455}]'
"""

result, error = bulk_update_user_stat_item(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
