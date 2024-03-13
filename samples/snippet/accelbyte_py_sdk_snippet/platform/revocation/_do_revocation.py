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

Example: '{"meta": {"tbZIHiZxyHyeb4lT": {}, "uyJyzxICnWVVsNtV": {}, "2tqQFF9LAWWGMH9Q": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "mkC7OcCOSPlX1r4w", "namespace": "QyahfU94y72hkZfE"}, "entitlement": {"entitlementId": "ECA2H42REuuqo57E"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "jIroEnpYkb8bjBOM", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 88, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "System", "currencyCode": "iZyfrdmjiVpkQx65", "namespace": "ydRlk4171vWjr9PI"}, "entitlement": {"entitlementId": "BOqvn63PNbsrY3wt"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "73vfYLJWSIJdshGj", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 9, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "kviCZP3vFZw2GOou", "namespace": "rekiCsMgybsrtGle"}, "entitlement": {"entitlementId": "7YOdlUD0exC0Acto"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "9acD8L9uu8pPL8Fp", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 9, "type": "ITEM"}], "source": "ORDER", "transactionId": "UXAqSSAoS0dXxyIS"}'
"""

result, error = do_revocation(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
