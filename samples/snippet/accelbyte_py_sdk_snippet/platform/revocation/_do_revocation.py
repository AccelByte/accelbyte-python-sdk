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

Example: '{"meta": {"67k9r0SkVvwy0Dzv": {}, "a1EZFzgd7S5IZpeb": {}, "fwSeZqfe15qlNiNv": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "rmtoJViBgJ74wx2Y", "namespace": "3fCdEXzUcFr7b5AA"}, "entitlement": {"entitlementId": "A6xGWAA0XwqILbGv"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "GVTFBgBElb8WPkvi", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 82, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "JH1uPKRQojSbGjc1", "namespace": "PlrzI3DKB5G340ZQ"}, "entitlement": {"entitlementId": "mVvMDPSoi7VoF19a"}, "item": {"entitlementOrigin": "System", "itemIdentity": "oiA4GjsRBItPFUp9", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 74, "type": "ITEM"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "BjhQ283uUeg6slcC", "namespace": "Nkd4Pk1i9iGwurBE"}, "entitlement": {"entitlementId": "UvfZunKQyBQHQ76E"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "SSITS3Wyodph2cAi", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 40, "type": "ENTITLEMENT"}], "source": "DLC", "transactionId": "pAHoatapW4B2YeT9"}'
"""

result, error = do_revocation(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
