import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import fulfill_rewards_v2
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FulfillmentResult
from accelbyte_py_sdk.api.platform.models import RewardsRequest

"""
body:
Definition: RewardsRequest
entitlement_collection_id: str
entitlement_origin: str
metadata: Dict[str, Any]
origin: str
rewards: List[PlatformReward]
Definition: List[PlatformReward]
    currency: PlatformRewardCurrency
    Definition: PlatformRewardCurrency
        currency_code: str
        namespace: str
    item: PlatformRewardItem
    Definition: PlatformRewardItem
        item_id: str
        item_sku: str
        item_type: str
    quantity: int
    type_: str
source: str
transaction_id: str

Example: '{"entitlementCollectionId": "NXgqFGxUCwq4CznQ", "entitlementOrigin": "GooglePlay", "metadata": {"uNaLAbmRUEI6Unam": {}, "yZca5nNhFfzdXVbX": {}, "nak9SfUY7kFZmQIa": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "3TieyDvZOKSW8Bsq", "namespace": "6CcKV7ygwzOWCOu3"}, "item": {"itemId": "1GZnz2eYpIWEUvRN", "itemSku": "P9wJSGexjGvTI3BO", "itemType": "T45P8OENtpbP9C9v"}, "quantity": 64, "type": "CURRENCY"}, {"currency": {"currencyCode": "uXtKRo4IJwGN3OY0", "namespace": "5vcbJq2HUAiMpIgS"}, "item": {"itemId": "864P47yTrSEHsSLr", "itemSku": "J3eHgp6FOUM6qhMA", "itemType": "JgdHJNB5SCADq52m"}, "quantity": 83, "type": "CURRENCY"}, {"currency": {"currencyCode": "bsb1UjwCiFp5lDvQ", "namespace": "mTaKPupVQLJGH59V"}, "item": {"itemId": "ZHLiPWGPkTABpDb4", "itemSku": "J8E8nCJaxpL9SbxQ", "itemType": "mEqDDvkU0qTxcwEJ"}, "quantity": 79, "type": "CURRENCY"}], "source": "ACHIEVEMENT", "transactionId": "7ibcJK2VRKNwa2xR"}'
"""

result, error = fulfill_rewards_v2(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
