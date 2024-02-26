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

Example: '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 67, "currencyCode": "R5yC7CFvt7uHgyfs", "expireAt": "1993-04-18T00:00:00Z"}, "debitPayload": {"count": 96, "currencyCode": "sywu6moS43nBP132", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 83, "entitlementCollectionId": "vDACdUYz5CAPB4EL", "entitlementOrigin": "Other", "itemIdentity": "2G3jroZKpxlQZtku", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "4b8HBZ3duWyQooK4"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 2, "currencyCode": "W8Y0UiBcqntrJAAG", "expireAt": "1983-07-29T00:00:00Z"}, "debitPayload": {"count": 79, "currencyCode": "KVskkNHJKDWoo1wc", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 50, "entitlementCollectionId": "n1Jy7H1fvtaP3dbb", "entitlementOrigin": "Xbox", "itemIdentity": "9BwwcLJERq8ywpEp", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 26, "entitlementId": "Jd6O60RKvA3xq3E3"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 7, "currencyCode": "9OXLNSsde26pgEIu", "expireAt": "1995-04-20T00:00:00Z"}, "debitPayload": {"count": 15, "currencyCode": "z6n0H5sZusmENerc", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 49, "entitlementCollectionId": "PG7O6pb8T5n3Dyn4", "entitlementOrigin": "Steam", "itemIdentity": "uzYgBz1fTg34VEwM", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 47, "entitlementId": "BGnBQpjyIu5Dj7ie"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "YjH0mQsjh9m3XC4Q"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 72, "currencyCode": "g1PrNDHV3BOF595j", "expireAt": "1995-06-30T00:00:00Z"}, "debitPayload": {"count": 72, "currencyCode": "4ZvVtfkuByxarCd3", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 73, "entitlementCollectionId": "ZJUIhbco7toBCFuE", "entitlementOrigin": "IOS", "itemIdentity": "9Oqs6EuW4mL7IDvy", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 13, "entitlementId": "ekLENjqRSt9SsXGq"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 50, "currencyCode": "k9MHLh7oOhpbPQdm", "expireAt": "1973-07-27T00:00:00Z"}, "debitPayload": {"count": 65, "currencyCode": "cxoxdYSazzbBwtln", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 20, "entitlementCollectionId": "NE53HltNy7ilDQzX", "entitlementOrigin": "IOS", "itemIdentity": "5JX88XZP4WWPQHXo", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 55, "entitlementId": "cWSL8VviOxBJpnFl"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 12, "currencyCode": "RYOlPwJwxe6koZAV", "expireAt": "1998-12-12T00:00:00Z"}, "debitPayload": {"count": 33, "currencyCode": "jlhzfx15nLdIGAYQ", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 44, "entitlementCollectionId": "Mh3IyCK1VzoWFGk3", "entitlementOrigin": "Twitch", "itemIdentity": "MOyagqsE6ROAl08u", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 41, "entitlementId": "I19FeNgbBtpXmbhV"}, "type": "CREDIT_WALLET"}], "userId": "hlDgKtiVdFjhDatU"}, {"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 60, "currencyCode": "0Qke36WtCnY1pcnI", "expireAt": "1991-02-25T00:00:00Z"}, "debitPayload": {"count": 36, "currencyCode": "pwkPiD0WKxeLjpst", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 5, "entitlementCollectionId": "Qs4uCig7RC9AoR51", "entitlementOrigin": "Epic", "itemIdentity": "tKCy7tBKBN2OSXff", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 70, "entitlementId": "gvAsxWNcwavg644h"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 56, "currencyCode": "HHtViVbjrX0WbG3f", "expireAt": "1975-10-20T00:00:00Z"}, "debitPayload": {"count": 48, "currencyCode": "hAZuSLp5Wh5obEtb", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 20, "entitlementCollectionId": "R3nnUT3Az12mBilu", "entitlementOrigin": "Playstation", "itemIdentity": "mZCUakUW0iYBthbW", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 45, "entitlementId": "TsEP55mXWjxhDSwF"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 78, "currencyCode": "YZAKdlL6eOf4VeW4", "expireAt": "1990-01-10T00:00:00Z"}, "debitPayload": {"count": 32, "currencyCode": "TGiQ9begGv5UHrPw", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 66, "entitlementCollectionId": "H6mXDZFzHKp00vdp", "entitlementOrigin": "Other", "itemIdentity": "53Q5piiamDMs78AH", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 10, "entitlementId": "yrT2hQ1fw6cIuLVr"}, "type": "FULFILL_ITEM"}], "userId": "YXIAALVr9wCrdqIe"}], "metadata": {"aJPfVy7ROtJpIkcw": {}, "HY7Gm7x7eTwcppFM": {}, "mrrzRSIBPuCJXwPv": {}}, "needPreCheck": false, "transactionId": "WL8TTwoSSa5j9yCG", "type": "tDCk6u97sp9p5BsL"}'
"""

result, error = commit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
