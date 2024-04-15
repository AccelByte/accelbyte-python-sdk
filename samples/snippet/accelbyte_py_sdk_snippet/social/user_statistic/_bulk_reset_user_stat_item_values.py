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

Example: '[{"additionalData": {"g3HM2GdHBmBJ3znP": {}, "jFgmHitfHX4YFj1Z": {}, "rJ0zyTzYESAlmzrR": {}}, "statCode": "xCvffy6r4KqC7ekZ"}, {"additionalData": {"CqZYLelzKeeu6ngc": {}, "cGMF2NuMp5LSxyVK": {}, "K2UdBSAOmClSLOnZ": {}}, "statCode": "XWGDN2ohYOO3c7OK"}, {"additionalData": {"TuP1HaqYjXtvjMmF": {}, "HkMPeHfIZEU5LCAt": {}, "JdEpdwXmbVXImccN": {}}, "statCode": "AUFJJCVqSdbhjtpb"}]'
"""

result, error = bulk_reset_user_stat_item_values(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
