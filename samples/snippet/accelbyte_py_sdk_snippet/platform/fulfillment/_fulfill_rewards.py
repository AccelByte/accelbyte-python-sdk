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

Example: '{"entitlementCollectionId": "NSRJne1odr7TfGgI", "entitlementOrigin": "IOS", "metadata": {"gMWEHeTPUiaNU4SN": {}, "lPeU4Ycu9gkPqyAJ": {}, "lJRVTYM3jweihPhN": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "V2ZgmRlOJK6fMpje", "namespace": "FygzDngCDNxvP8vM"}, "item": {"itemId": "Q8YwjHDBOQvdFUNh", "itemSku": "RszhyQt1W8tSy99k", "itemType": "RLtGkM9LKTqoudq7"}, "quantity": 54, "type": "ITEM"}, {"currency": {"currencyCode": "WSWJtwI4oPB2IUDz", "namespace": "zOjfrwObreMiMD2G"}, "item": {"itemId": "64qUL0r1PDrbMOJP", "itemSku": "ztlUj8gr9ykmAElT", "itemType": "4cSPaccrTd7SETy9"}, "quantity": 65, "type": "CURRENCY"}, {"currency": {"currencyCode": "GdjAo94PgIuMtpTO", "namespace": "MqtdtFZCz2n7kBx8"}, "item": {"itemId": "ahxXrTvPPfnM4POV", "itemSku": "gmd0ITYWy6CSvWu3", "itemType": "WecjpXexKMW3sDR1"}, "quantity": 52, "type": "ITEM"}], "source": "SELL_BACK", "transactionId": "Mz3TwfhMoj6kcIgW"}'
"""

result, error = fulfill_rewards(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
