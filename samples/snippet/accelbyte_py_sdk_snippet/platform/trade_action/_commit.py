import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import commit
from accelbyte_py_sdk.api.platform.models import TradeChainActionHistoryInfo
from accelbyte_py_sdk.api.platform.models import TradeChainedActionCommitRequest

"""
body:
Definition: TradeChainedActionCommitRequest
actions: List[ActionRequest]
Definition: List[ActionRequest]
    operations: List[OperationRequest]
    Definition: List[OperationRequest]
        credit_payload: CreditPayload
        Definition: CreditPayload
            balance_origin: str
            count: int
            currency_code: str
            expire_at: str
        debit_payload: DebitPayload
        Definition: DebitPayload
            count: int
            currency_code: str
            wallet_platform: str
        ful_fill_item_payload: FulFillItemPayload
        Definition: FulFillItemPayload
            count: int
            entitlement_collection_id: str
            entitlement_origin: str
            item_identity: str
            item_identity_type: str
        revoke_entitlement_payload: RevokeEntitlementPayload
        Definition: RevokeEntitlementPayload
            count: int
            entitlement_id: str
        type_: str
    user_id: str
metadata: Dict[str, Any]
need_pre_check: bool
transaction_id: str
type_: str

Example: '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 43, "currencyCode": "JwArGvL83W3XTB8R", "expireAt": "1999-02-17T00:00:00Z"}, "debitPayload": {"count": 64, "currencyCode": "T4rorggjWNGsVyUU", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 27, "entitlementCollectionId": "N6ozdgFV1cj1RgEb", "entitlementOrigin": "GooglePlay", "itemIdentity": "4FPo0WriymOmQUsz", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 10, "entitlementId": "QJnpNvFBUi8wRjKS"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 20, "currencyCode": "wjXztOqPaiPJTqyb", "expireAt": "1997-01-26T00:00:00Z"}, "debitPayload": {"count": 47, "currencyCode": "a1p9ryrhrMOLMa17", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 100, "entitlementCollectionId": "IrfGTFxE93Pxb0tJ", "entitlementOrigin": "IOS", "itemIdentity": "dDJ0grm1FxIf6d0V", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 78, "entitlementId": "sg8g3GrrC0xXlBTR"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 58, "currencyCode": "jwgOhA5j7rj2bFog", "expireAt": "1977-02-14T00:00:00Z"}, "debitPayload": {"count": 92, "currencyCode": "6RB9jhHg0W2M5ER1", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 99, "entitlementCollectionId": "RHnm4VKpRrSDEdJZ", "entitlementOrigin": "Oculus", "itemIdentity": "jeEyr32A2e09FGEA", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 34, "entitlementId": "bFKpyBOW2K38KQ6e"}, "type": "CREDIT_WALLET"}], "userId": "x1EaCpXYcmYuCSnP"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 41, "currencyCode": "yU2qmfyxWursADqw", "expireAt": "1977-01-15T00:00:00Z"}, "debitPayload": {"count": 41, "currencyCode": "Eshr61IankMxMaTI", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 56, "entitlementCollectionId": "HKTA6ew2xAules59", "entitlementOrigin": "Playstation", "itemIdentity": "STNf3mQMlpCwuzC1", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 66, "entitlementId": "iRVWNrkoa2cRbN7L"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "System", "count": 47, "currencyCode": "iIl8I7BqjhECUHIf", "expireAt": "1971-07-20T00:00:00Z"}, "debitPayload": {"count": 90, "currencyCode": "HEVmodEgV0fCvz5R", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 47, "entitlementCollectionId": "tAN3Q2RXRtepcXLJ", "entitlementOrigin": "Steam", "itemIdentity": "1zFJLGsleTCeHTY1", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 32, "entitlementId": "j5KjeNWYApyDeI3h"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 91, "currencyCode": "u6tSwBy1ssrsr3Yw", "expireAt": "1981-09-25T00:00:00Z"}, "debitPayload": {"count": 98, "currencyCode": "hxeifHM3RBXPrTPU", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 15, "entitlementCollectionId": "Zgbr9FQSunaMiqP4", "entitlementOrigin": "Other", "itemIdentity": "7jU34rZJSfMyTkCj", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 99, "entitlementId": "LCQQMvJa3fTNIw4X"}, "type": "DEBIT_WALLET"}], "userId": "wq24MH3WZR93D7sr"}, {"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 34, "currencyCode": "yNJCF7a3uEH89o78", "expireAt": "1990-04-27T00:00:00Z"}, "debitPayload": {"count": 96, "currencyCode": "7u4N8puKPryw9JKn", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 54, "entitlementCollectionId": "eg1WLFZ0ikbh5CFa", "entitlementOrigin": "IOS", "itemIdentity": "x0QMyzVlNhD0f1xm", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 9, "entitlementId": "JkrwRhZTT77upUPP"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 70, "currencyCode": "OenGMqjwi0PtjaYX", "expireAt": "1984-09-05T00:00:00Z"}, "debitPayload": {"count": 65, "currencyCode": "WaKSzGBj85AKFXF6", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 44, "entitlementCollectionId": "GkV8W9TAgaBruuuM", "entitlementOrigin": "Epic", "itemIdentity": "SuHfb7nrq94fPHKJ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 5, "entitlementId": "ECBJhvH7YwBzbqbO"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "System", "count": 81, "currencyCode": "Pzfdkl4zLgBKboLz", "expireAt": "1989-05-17T00:00:00Z"}, "debitPayload": {"count": 14, "currencyCode": "6pYF9PCcmyksJb14", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 93, "entitlementCollectionId": "6qiNQmitkN8a9yne", "entitlementOrigin": "Twitch", "itemIdentity": "45P0Ppz9AXa14sGF", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 7, "entitlementId": "r5ahP9VA4J8HIV2t"}, "type": "CREDIT_WALLET"}], "userId": "wtgToBrtvsMYdljK"}], "metadata": {"rJfhxGHgo4slacYd": {}, "FHwDcyYu6ozb0sAw": {}, "LgHbqhVaOEUdCq8c": {}}, "needPreCheck": true, "transactionId": "FORUPSrc3K5w9WvG", "type": "2p1WYKDgBJqYGhZd"}'
"""

result, error = commit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
