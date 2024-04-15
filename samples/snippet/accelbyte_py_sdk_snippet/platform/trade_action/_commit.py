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

Example: '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 12, "currencyCode": "EEuvRdcmlW4GbruY", "expireAt": "1996-11-27T00:00:00Z"}, "debitPayload": {"count": 35, "currencyCode": "8wMsUr8Z2Jf1YsL1", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 1, "entitlementCollectionId": "yvZivVSOZpb8goUd", "entitlementOrigin": "Nintendo", "itemIdentity": "TWdkukniNjB30OKv", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 82, "entitlementId": "YxFfkoRuwMztsORQ"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 81, "currencyCode": "ae3JdT2i6BNlR4cv", "expireAt": "1991-12-20T00:00:00Z"}, "debitPayload": {"count": 4, "currencyCode": "DMnnnAHJ35CubXwm", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 54, "entitlementCollectionId": "VlzXbyg2K9klY4KW", "entitlementOrigin": "Other", "itemIdentity": "RbOkSDagqDbL8bA2", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 22, "entitlementId": "jqwhu42hwGMv3g6j"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 18, "currencyCode": "i62JTkUnlA5Tpd4u", "expireAt": "1989-12-05T00:00:00Z"}, "debitPayload": {"count": 96, "currencyCode": "PdS0T80o69qBkHnQ", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 44, "entitlementCollectionId": "IRA3svb64FibJRRN", "entitlementOrigin": "Xbox", "itemIdentity": "vw3ydlkG7amPh61Z", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 78, "entitlementId": "4G9BGRKiBuLe16Vh"}, "type": "CREDIT_WALLET"}], "userId": "MFkRJI5p0iYHdvjT"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 54, "currencyCode": "rsGngp7G9QqI62fs", "expireAt": "1974-07-24T00:00:00Z"}, "debitPayload": {"count": 63, "currencyCode": "59XFHccXUOJ9qaYw", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 10, "entitlementCollectionId": "jDMMdDEt3ckaYpTU", "entitlementOrigin": "Twitch", "itemIdentity": "FCwGuSIexRZWmRT1", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 94, "entitlementId": "M1OwtA9jaWHDThtF"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 3, "currencyCode": "bJQEwTEprhGA5SVh", "expireAt": "1995-05-06T00:00:00Z"}, "debitPayload": {"count": 8, "currencyCode": "sApdO2oFmjKmZGWM", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 13, "entitlementCollectionId": "LPzJ4prJzGipGs5W", "entitlementOrigin": "IOS", "itemIdentity": "JaElMPRPtIIbEmHj", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 93, "entitlementId": "7CQacV2hB8Xreluq"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 9, "currencyCode": "IcYoeB5VZVfKGPT6", "expireAt": "1997-10-06T00:00:00Z"}, "debitPayload": {"count": 82, "currencyCode": "zKteBI8TPm8Tcdof", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 5, "entitlementCollectionId": "KEjqkxY5pJzPdQc3", "entitlementOrigin": "Epic", "itemIdentity": "2ul43TstztUzKKmG", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 95, "entitlementId": "AOPWAusL2mMy4sKC"}, "type": "DEBIT_WALLET"}], "userId": "uZVcHEZMEQ2apiLH"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 16, "currencyCode": "xgqFHmkTAf6mFOgt", "expireAt": "1978-02-27T00:00:00Z"}, "debitPayload": {"count": 61, "currencyCode": "I5yI1Qx4ZRju6bG6", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 54, "entitlementCollectionId": "pm7bTjpIOe1AMifD", "entitlementOrigin": "Xbox", "itemIdentity": "20tkQwYRMupNd7R7", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 76, "entitlementId": "MyN8zAeFH1wTtzbV"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 38, "currencyCode": "F70UViXPCEm5tj7Z", "expireAt": "1992-09-11T00:00:00Z"}, "debitPayload": {"count": 52, "currencyCode": "qmaYUGLSmLBrCC6F", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 58, "entitlementCollectionId": "7ZCVpUnYWPxv0kG9", "entitlementOrigin": "GooglePlay", "itemIdentity": "V0qQxtUo6laXy7iL", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 71, "entitlementId": "1F2PW13Z5ZFLqaPN"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 99, "currencyCode": "NnOVKu3sXH8jHx3E", "expireAt": "1985-12-11T00:00:00Z"}, "debitPayload": {"count": 57, "currencyCode": "a0eHisdrH81EFJqE", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 24, "entitlementCollectionId": "pkGfh3euzSIDqzyD", "entitlementOrigin": "Xbox", "itemIdentity": "QWBJOmvorYEJ9i55", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 75, "entitlementId": "rZMVd7nKQANdhMDC"}, "type": "FULFILL_ITEM"}], "userId": "aDFPQ4x59AT4SlSa"}], "metadata": {"mCJ9IW1e8ia3iV3y": {}, "Un8YSbyhYqAmI0rq": {}, "xXowuf7MolrfX7UE": {}}, "needPreCheck": true, "transactionId": "r75Pk2u7Fjwegaz5", "type": "5OBbt5KI7n8b2aST"}'
"""

result, error = commit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
