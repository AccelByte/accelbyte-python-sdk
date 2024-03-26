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

Example: '[{"additionalData": {"sfsnyeVpaGL0Vf5E": {}, "GTs7uYsj6d8x1KEI": {}, "IOvCJ0AxoMPeiQhz": {}}, "statCode": "3eDBbBy0KaH9vAfI"}, {"additionalData": {"3UxwZqt4AmzIjSZr": {}, "8NQ8EtPndNYAianZ": {}, "ahfknRTEuFrTvYoH": {}}, "statCode": "4geMAg0zcDGxILhB"}, {"additionalData": {"xBDvVzq35RVm1R0h": {}, "DK6ctVz5zOASyGJt": {}, "Yc3s7IWbZ2Mc3uKB": {}}, "statCode": "beAousyjkLDj6nHx"}]'
"""

result, error = bulk_reset_user_stat_item_values(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
