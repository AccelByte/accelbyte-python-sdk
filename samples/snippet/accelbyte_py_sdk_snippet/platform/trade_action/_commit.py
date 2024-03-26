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

Example: '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 86, "currencyCode": "EjKq3Z6LaoRUjcaC", "expireAt": "1983-11-26T00:00:00Z"}, "debitPayload": {"count": 46, "currencyCode": "UXQCNy2fozaZ3gkD", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 98, "entitlementCollectionId": "lZ8LC9VDHKLhAb9o", "entitlementOrigin": "System", "itemIdentity": "ycnEb4rGkNJMw2KH", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 13, "entitlementId": "aA2w70QqDGC6BACZ"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 27, "currencyCode": "FkIpCuc0O15BQDgl", "expireAt": "1971-10-14T00:00:00Z"}, "debitPayload": {"count": 30, "currencyCode": "ZN9f0HyoWpZ4OaCh", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 72, "entitlementCollectionId": "9EXFJT6tQ1ySEW3n", "entitlementOrigin": "IOS", "itemIdentity": "sFGOby3wpddxY56O", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 98, "entitlementId": "TvanMH80pk1hlMsx"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 55, "currencyCode": "Xb6XPTT4xDgcrUoR", "expireAt": "1991-09-23T00:00:00Z"}, "debitPayload": {"count": 26, "currencyCode": "lRfmGdIoZ8gU7dES", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 23, "entitlementCollectionId": "oyzmJLUT9enrXsaL", "entitlementOrigin": "Playstation", "itemIdentity": "4AGKI0nf3n2tkwoI", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 3, "entitlementId": "RLUi01Rj7QNXLOdo"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "CjqfvLOYWl1m9aDL"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 24, "currencyCode": "xg4UNbMDxeMyCn6u", "expireAt": "1988-05-29T00:00:00Z"}, "debitPayload": {"count": 94, "currencyCode": "M4tqRprpRZlEYrOq", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 97, "entitlementCollectionId": "J1TwGG6IlteAzVcV", "entitlementOrigin": "System", "itemIdentity": "d9T6zBMWEHgKlc6w", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "wY1hoffjrxQOhKUu"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 51, "currencyCode": "Bd1OJ8TO25gsCUEr", "expireAt": "1984-03-07T00:00:00Z"}, "debitPayload": {"count": 55, "currencyCode": "ZP1EQrBuQpx0kxKE", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 84, "entitlementCollectionId": "3UwlSQNnku8swql4", "entitlementOrigin": "Playstation", "itemIdentity": "utQijULz1Ryklcof", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 82, "entitlementId": "GV0Myd0ZJ7QxfvYP"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 89, "currencyCode": "5iKJ1vr72PMhYcfd", "expireAt": "1972-03-19T00:00:00Z"}, "debitPayload": {"count": 80, "currencyCode": "2MCrhiYCwfpzYRbo", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 17, "entitlementCollectionId": "c7CX5VAkRin0ICTc", "entitlementOrigin": "Nintendo", "itemIdentity": "iBVS2IE5wKcOgppF", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 42, "entitlementId": "n9bdg2zOZ7e8s8vZ"}, "type": "CREDIT_WALLET"}], "userId": "A9O6g8ardX9N31UT"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 32, "currencyCode": "gzDxnITCUbWTiV6X", "expireAt": "1993-03-09T00:00:00Z"}, "debitPayload": {"count": 42, "currencyCode": "F6zsLZ3qdeVkP1Kv", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 2, "entitlementCollectionId": "82wQ4Os6JnImwuDc", "entitlementOrigin": "Playstation", "itemIdentity": "gzORWvqx8AEQdcj9", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 37, "entitlementId": "M3WoO58bSKbPyj4v"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 81, "currencyCode": "z9Jhoaex2D1z46e6", "expireAt": "1994-04-14T00:00:00Z"}, "debitPayload": {"count": 39, "currencyCode": "aLcICJOV0vtCVX1g", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 5, "entitlementCollectionId": "nfHoxcPmU4xifRZA", "entitlementOrigin": "System", "itemIdentity": "0OCvAfPFsZQG1VFO", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 8, "entitlementId": "jGghEt31tlUZjdpj"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 64, "currencyCode": "dEpsOPSJMCFtj1x1", "expireAt": "1987-02-13T00:00:00Z"}, "debitPayload": {"count": 34, "currencyCode": "G3V4pY3CduyOM2mL", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 94, "entitlementCollectionId": "YjUodJMV4fCnHoJw", "entitlementOrigin": "Steam", "itemIdentity": "cL7rkswJytc6jPQt", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 83, "entitlementId": "47lHnVvMT7w3mfkR"}, "type": "FULFILL_ITEM"}], "userId": "WhvPHMNAnoxcmR5s"}], "metadata": {"G4sKXDAI25fzAbap": {}, "4KnMSJgBNHZFuIPt": {}, "UrHLqzyOJA8IbyGT": {}}, "needPreCheck": false, "transactionId": "5PtJMy7pZnCYxR8a", "type": "W43mpmwsBQ2DwtOy"}'
"""

result, error = commit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
