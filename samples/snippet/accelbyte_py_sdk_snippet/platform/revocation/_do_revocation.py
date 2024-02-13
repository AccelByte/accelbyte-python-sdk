import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import do_revocation
from accelbyte_py_sdk.api.platform.models import RevocationRequest
from accelbyte_py_sdk.api.platform.models import RevocationResult

"""
body:
Definition: RevocationRequest
meta: Dict[str, Any]
revoke_entries: List[RevokeEntry]
Definition: List[RevokeEntry]
    currency: RevokeCurrency
    Definition: RevokeCurrency
        balance_origin: str
        currency_code: str
        namespace: str
    entitlement: RevokeEntitlement
    Definition: RevokeEntitlement
        entitlement_id: str
    item: RevokeItem
    Definition: RevokeItem
        entitlement_origin: str
        item_identity: str
        item_identity_type: str
        origin: str
    quantity: int
    type_: str
source: str
transaction_id: str

Example: '{"meta": {"9ccroX7U5wvcruFe": {}, "YRXTeyGRoh8zm8zv": {}, "Ia2aSyromakgrMdc": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Other", "currencyCode": "hzGlUoLD8ChtPepT", "namespace": "MmEye29rmBRQR9s6"}, "entitlement": {"entitlementId": "ZSn7C7smW71XzWXY"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "uLTbsiu9PGMs5CMc", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 94, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "yWicfSMRDGWf9I03", "namespace": "CXPyGzrHDee0y5rz"}, "entitlement": {"entitlementId": "CnvGxgebCzsEZ2Z1"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "WZNRhZS7rNUvMf0t", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 79, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Oculus", "currencyCode": "i1LBxlhQK2XMsa9w", "namespace": "8x0Grqrrpo1VjWzk"}, "entitlement": {"entitlementId": "d9ynajTcidyQyncc"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "6tdR7D7fPJXPPvFA", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 85, "type": "ITEM"}], "source": "ORDER", "transactionId": "HVpVU1oczQkGQK2T"}'
"""

result, error = do_revocation(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
