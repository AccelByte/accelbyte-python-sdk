import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_reset_user_stat_item_values
from accelbyte_py_sdk.api.social.models import ADTOObjectForResettingUserStatItems
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[ADTOObjectForResettingUserStatItems]
additional_data: Dict[str, Any]
stat_code: str

Example: '[{"additionalData": {"WQi0mYQO9B32o1zt": {}, "T78ybqK5bbh7Qw7R": {}, "qM0NrrNLPtHHcF5C": {}}, "statCode": "Zr4qIapMKRYMcz6b"}, {"additionalData": {"KOTXo4tlyJGP59e1": {}, "SyI8NAt8lwQFTPNB": {}, "NbBTLXqOtV0ACBuQ": {}}, "statCode": "4H9W2xhs1tdGFXzp"}, {"additionalData": {"1ehQuAnh0Skn2iRR": {}, "yxeNlei0n7e6KpnO": {}, "9Wpuih1FnDJAXC9r": {}}, "statCode": "fWECQmS37IMixnAB"}]'
"""

result, error = bulk_reset_user_stat_item_values(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
