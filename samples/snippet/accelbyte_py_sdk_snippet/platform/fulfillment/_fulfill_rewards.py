import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import fulfill_rewards
from accelbyte_py_sdk.api.platform.models import ErrorEntity
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

Example: '{"entitlementCollectionId": "mlc6rEF0mthEN6WW", "entitlementOrigin": "Steam", "metadata": {"3Rnt6YmkSRjphmsL": {}, "iSM2avb98tEBD45H": {}, "XioS5CTJBhtDCaMl": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "tmYf7bVVvwr2G47k", "namespace": "IpQlCZfqvCkhJtVg"}, "item": {"itemId": "LiUEGVErSLRYIyU9", "itemSku": "lZFe7GCWgYDpwCEr", "itemType": "ViUiIf8BiX84fPW1"}, "quantity": 33, "type": "ITEM"}, {"currency": {"currencyCode": "8JSleTwRJD0W5xAg", "namespace": "zJ4n8QHr5lCs60yx"}, "item": {"itemId": "8SghK0fkAe2dSHVQ", "itemSku": "CdHeOQQaGVD2qGfZ", "itemType": "azUMDBW1m6TdLUb6"}, "quantity": 84, "type": "ITEM"}, {"currency": {"currencyCode": "TnIH44TqfsvYlJKs", "namespace": "qOCz2HPYY2jCucx3"}, "item": {"itemId": "uSSyvmvZfxhRYgAG", "itemSku": "t9QoMzO94IDdPdhL", "itemType": "zQSlzW9YtQirSNcm"}, "quantity": 66, "type": "ITEM"}], "source": "SELL_BACK", "transactionId": "19VKFEQgjjr2Z8E4"}'
"""

result, error = fulfill_rewards(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
