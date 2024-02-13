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

Example: '[{"additionalData": {"S2noPaM51GQnOywz": {}, "uCZawro68NZIlQ1D": {}, "Db6VyJNerNLqcChz": {}}, "additionalKey": "agjMGmQ57HXVYYIr", "statCode": "HcmWW981H1iVO4TZ", "updateStrategy": "INCREMENT", "userId": "ANR4KAqoQ8s4nBtr", "value": 0.513809374196403}, {"additionalData": {"y3MP4OuVdNCfZaGq": {}, "rdB4eD3lkuQlkLco": {}, "ge0ZZugwaO8LTBbn": {}}, "additionalKey": "Qi3rNg3giFojoOoP", "statCode": "J68nu8eq0Zk80Y0P", "updateStrategy": "OVERRIDE", "userId": "dzIIc2Vwk9JXgeJw", "value": 0.02075454085205597}, {"additionalData": {"FYubNBihREaIw5lc": {}, "DjK20H0qh4eizd5r": {}, "IsJSIOuVXwVVNnUb": {}}, "additionalKey": "4Jjs55wwxIhFjniZ", "statCode": "K0L4eXSuyiouTFJJ", "updateStrategy": "MIN", "userId": "4ydFuVL11lzMyo1U", "value": 0.4253469347982176}]'
"""

result, error = bulk_update_user_stat_item_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
