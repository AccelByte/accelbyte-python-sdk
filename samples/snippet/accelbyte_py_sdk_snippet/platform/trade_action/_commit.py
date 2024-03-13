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

Example: '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 95, "currencyCode": "0y9wym0WJWkdcX1V", "expireAt": "1994-11-24T00:00:00Z"}, "debitPayload": {"count": 38, "currencyCode": "Oyie5kTpUqmgVyPh", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 50, "entitlementCollectionId": "IeMVyBwx6QqMf4sS", "entitlementOrigin": "Playstation", "itemIdentity": "jLPKJsmiUlxTsxuz", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 26, "entitlementId": "a2ZzhTtwPkmqRaPF"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 30, "currencyCode": "ct0No5Y2PgUlC56P", "expireAt": "1993-11-10T00:00:00Z"}, "debitPayload": {"count": 21, "currencyCode": "puDQPTN3y1uQl6XR", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 3, "entitlementCollectionId": "Ny7FF1RtYdZg8O02", "entitlementOrigin": "Epic", "itemIdentity": "35smpdFhVnvfaZrr", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 88, "entitlementId": "KaG3gB44FSGbX2G2"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 14, "currencyCode": "g9q60U7HJywZK4jX", "expireAt": "1991-05-30T00:00:00Z"}, "debitPayload": {"count": 50, "currencyCode": "y2B5OpA2JDTqR1vy", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 54, "entitlementCollectionId": "TDt1xCTp83U1cnKw", "entitlementOrigin": "Epic", "itemIdentity": "vkEIl8P4gRGoR0qn", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 99, "entitlementId": "9bvsKlJSxPtICKxn"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "tlphyGanTiUT5ypz"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 57, "currencyCode": "ZQcL5Rjqrp84QG92", "expireAt": "1989-01-27T00:00:00Z"}, "debitPayload": {"count": 20, "currencyCode": "g1p6TDNpBHA7GFFH", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 47, "entitlementCollectionId": "oa7yvYdVNJctuiYR", "entitlementOrigin": "Epic", "itemIdentity": "UMsCbLFPahDBHVt3", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 42, "entitlementId": "8FdRPNSndj0L8CTM"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 35, "currencyCode": "XOs9bZPzVggKyvE0", "expireAt": "1994-09-26T00:00:00Z"}, "debitPayload": {"count": 31, "currencyCode": "KJiCYYBEDelCa40k", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 72, "entitlementCollectionId": "zv0Rx0Ur5suGzE1A", "entitlementOrigin": "Oculus", "itemIdentity": "kLlMywF7WI2AWjjm", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 9, "entitlementId": "JfAeuYd5YGklxChc"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 92, "currencyCode": "I06a9ED1pea1UV7Y", "expireAt": "1998-01-23T00:00:00Z"}, "debitPayload": {"count": 58, "currencyCode": "lzYWufzYtwEdSQ0B", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 2, "entitlementCollectionId": "UECZp8GDWYEuj91b", "entitlementOrigin": "Steam", "itemIdentity": "mnfobiXRd1P8c2lM", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 66, "entitlementId": "nFkmvttZXiZChHvZ"}, "type": "CREDIT_WALLET"}], "userId": "di7zIlbWT7Fmzcvg"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 99, "currencyCode": "fYT4fYXozsGyBNk2", "expireAt": "1994-06-09T00:00:00Z"}, "debitPayload": {"count": 56, "currencyCode": "l3FeYu70s8Xk3lwR", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 29, "entitlementCollectionId": "p6YyZm9d1wHVCgxl", "entitlementOrigin": "System", "itemIdentity": "rRCvgYfKaasPAY5S", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 83, "entitlementId": "zRmt1UynN3tF6FUN"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 87, "currencyCode": "RKbELByUkFDy9KvM", "expireAt": "1980-11-03T00:00:00Z"}, "debitPayload": {"count": 16, "currencyCode": "1vCrOCsvVpxtlpMH", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 41, "entitlementCollectionId": "ikEB9K9qrivbtQ7z", "entitlementOrigin": "Other", "itemIdentity": "BHjp0cSbQ58Sjy4W", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 46, "entitlementId": "i3UZ6AppqNTELdfB"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 44, "currencyCode": "CtbTQqSIMH4seD7n", "expireAt": "1987-01-31T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "teATWwo45F60ExuB", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 48, "entitlementCollectionId": "PxtiZ3vXhD9iiVUL", "entitlementOrigin": "IOS", "itemIdentity": "cXg3r4XU0G4s63aX", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 99, "entitlementId": "QrvFD0GcLqyI45s7"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "9w7wr9bHoavOni7J"}], "metadata": {"vhRf3Shn5BGlMgvD": {}, "mI4j0nHUCymXypRy": {}, "CIvcsb1lKeRu5X1I": {}}, "needPreCheck": true, "transactionId": "sq4ZQXnASxXYcNox", "type": "vUGjlGin04ANil4w"}'
"""

result, error = commit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
