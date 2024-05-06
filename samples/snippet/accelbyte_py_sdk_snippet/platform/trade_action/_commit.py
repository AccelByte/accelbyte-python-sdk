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

Example: '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 56, "currencyCode": "ZorwzrhdeNZx2K4r", "expireAt": "1977-06-29T00:00:00Z"}, "debitPayload": {"count": 46, "currencyCode": "H0WsdwWU5lv4djTd", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 58, "entitlementCollectionId": "6LpAfbp9ePe3AmZP", "entitlementOrigin": "Playstation", "itemIdentity": "FVbzpx2FjeMqbYJU", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 33, "entitlementId": "BXiWZdN9gejRmoQL"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 89, "currencyCode": "I0Rm7f2B57YGSySr", "expireAt": "1995-07-16T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "Yg0FIFUQGPwuORCy", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 52, "entitlementCollectionId": "nlrZt5qMwOL6QN36", "entitlementOrigin": "Epic", "itemIdentity": "Ey17TMBvnlJNg6ke", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 37, "entitlementId": "aQTIg0oCxKVtfXhG"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "System", "count": 0, "currencyCode": "IBtP3woU5vw72Gy2", "expireAt": "1986-06-30T00:00:00Z"}, "debitPayload": {"count": 64, "currencyCode": "GYRABh5xvpEl8ZvX", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 46, "entitlementCollectionId": "cUCACUhWo5eSUuag", "entitlementOrigin": "System", "itemIdentity": "gm4YvxyoVdNSI11T", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 80, "entitlementId": "kvGO4Wtqap0TNa7Z"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "gRkPi09BIw1GFqFW"}, {"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 84, "currencyCode": "oxareZ6fxvQdy32V", "expireAt": "1972-05-21T00:00:00Z"}, "debitPayload": {"count": 97, "currencyCode": "4jJER5mPMgkIGTdr", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 43, "entitlementCollectionId": "fV5FSL9BXpvzUmum", "entitlementOrigin": "System", "itemIdentity": "70fGDyq7JhAv2Fcu", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 31, "entitlementId": "h9DSArjIIV2VSKfN"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 60, "currencyCode": "QssTQRp6rT5WKyct", "expireAt": "1981-03-29T00:00:00Z"}, "debitPayload": {"count": 26, "currencyCode": "2lCkBRzlApSRucHs", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 90, "entitlementCollectionId": "KgNb7qlFr8rQtUWP", "entitlementOrigin": "Playstation", "itemIdentity": "ho4uVnqHV5Ir87QK", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "BozpzaF884u0mlJm"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 60, "currencyCode": "30wzaZEeV0am2OOM", "expireAt": "1988-01-16T00:00:00Z"}, "debitPayload": {"count": 41, "currencyCode": "L4IylcMeFGEJMAsn", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 13, "entitlementCollectionId": "MO9JWsVdD3LpcvPl", "entitlementOrigin": "IOS", "itemIdentity": "XJ925wqTPKAq5McO", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 89, "entitlementId": "dmGsl6wghLOQTSgX"}, "type": "DEBIT_WALLET"}], "userId": "3SQU3t2i0ETI2I7p"}, {"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 5, "currencyCode": "XSNctzWzdU12Ey3i", "expireAt": "1985-11-16T00:00:00Z"}, "debitPayload": {"count": 57, "currencyCode": "mBDuORpvSAZQPHea", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 24, "entitlementCollectionId": "oZfaxH6uiuq6amJI", "entitlementOrigin": "Nintendo", "itemIdentity": "2BZcxUWVnTOh7HCK", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 79, "entitlementId": "zmqHXE7eaReIXRNo"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 80, "currencyCode": "y7iSA6kDJlw3Nqu9", "expireAt": "1985-06-03T00:00:00Z"}, "debitPayload": {"count": 10, "currencyCode": "L6xQXHsszlp1b5n6", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 36, "entitlementCollectionId": "3byYmpEXmQXA6SMt", "entitlementOrigin": "Other", "itemIdentity": "UTwRHRzXv7shIHiq", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 29, "entitlementId": "37Zov86yLe3qFx1L"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 92, "currencyCode": "QicofgrezGJXAOaV", "expireAt": "1994-05-29T00:00:00Z"}, "debitPayload": {"count": 64, "currencyCode": "7XYLrjrGpIFsg7ce", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 41, "entitlementCollectionId": "C4mB8aNDhQlWrnaR", "entitlementOrigin": "Steam", "itemIdentity": "9paZnAqhNeoODxLy", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 47, "entitlementId": "3Ohd8LIWzuM85LpI"}, "type": "DEBIT_WALLET"}], "userId": "W62yAUIf95YYDD6X"}], "metadata": {"KbqhLq6oOPdG5tYB": {}, "zTIrR6FW9XsiwNoW": {}, "qFaN8KFULd9rO9xD": {}}, "needPreCheck": true, "transactionId": "PfYWvGfqc4oaxpkz", "type": "tr03sVgeD2zE7rpd"}'
"""

result, error = commit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
