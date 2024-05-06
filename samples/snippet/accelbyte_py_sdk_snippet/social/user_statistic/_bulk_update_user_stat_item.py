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

Example: '[{"additionalData": {"yPxH72tF8KhJ8lLH": {}, "QeVBPsEwbqVfApZ5": {}, "T0oPrDD4fuXRUQX6": {}}, "statCode": "DqG3aohrCvPQRV0m", "updateStrategy": "INCREMENT", "value": 0.8888069873105837}, {"additionalData": {"WoXd44eMgGpn5lHz": {}, "84qZbcMs46WakAya": {}, "gLVTpoe1mlCE2Myq": {}}, "statCode": "ixXyuAnmulZKBFNm", "updateStrategy": "INCREMENT", "value": 0.036430574313440656}, {"additionalData": {"xtXItKeagEHmfPOB": {}, "5TcxShGlhI0nmrsY": {}, "TweNdSqdqrS2BDic": {}}, "statCode": "8LRPeYGYIO6Tq9nM", "updateStrategy": "OVERRIDE", "value": 0.4141663443107779}]'
"""

result, error = bulk_update_user_stat_item(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
