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

Example: '[{"additionalData": {"WXbJFGM3CZKWtAer": {}, "JdQqXfmRNHob1hHI": {}, "eJJGd2dvcMVYLoaC": {}}, "statCode": "H19rV3jOX4WGq2Ih"}, {"additionalData": {"qxIGsJHXZaiinjeF": {}, "fygm958dI2C5p0YY": {}, "UQYUSx8in9Wr8HTH": {}}, "statCode": "g1Kpr9KptihoCpkx"}, {"additionalData": {"rOF8tqndRPbJ5wIL": {}, "Js8UUwD5RVq3YyZy": {}, "gLsuT6fHpktQjN9N": {}}, "statCode": "zUUvCb4mPiq0kiW1"}]'
"""

result, error = bulk_reset_user_stat_item_values(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
