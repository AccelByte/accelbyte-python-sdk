import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_update_user_stat_item_1
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

Example: '[{"additionalData": {"J2Rsc9sGKB3ZJzuG": {}, "tUTrnoZSpoCQY4ZF": {}, "VRLbnUSaIYFJjhf9": {}}, "additionalKey": "N04egSDSOBQ08UoD", "statCode": "hOigt4qU5ybGHuHY", "updateStrategy": "MAX", "userId": "xfkmt7ujeNiissSj", "value": 0.28511588095367346}, {"additionalData": {"ozxV6YxYH47nT99w": {}, "euTo5l5o72yMxFMW": {}, "42wwt9Juo2hDABuK": {}}, "additionalKey": "7HlB4VpEtojd6uCV", "statCode": "TLntufYHeGw9UNxn", "updateStrategy": "OVERRIDE", "userId": "WD9bWDa0ySlmOhQn", "value": 0.1722390436660226}, {"additionalData": {"q3LXgsQn9ik6K7NY": {}, "ewOJtcChznJXRWOE": {}, "bWrcyYL1rohsw4sv": {}}, "additionalKey": "t7yGk0op3fH2CbW2", "statCode": "ADgfQfA2iPC8bUO3", "updateStrategy": "OVERRIDE", "userId": "7pEfYrASGP4fXgNk", "value": 0.8530464867267521}]'
"""

result, error = bulk_update_user_stat_item_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
