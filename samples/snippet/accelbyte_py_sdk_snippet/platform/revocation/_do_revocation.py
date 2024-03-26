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

Example: '{"meta": {"hUofx7hEhLdWJFXr": {}, "c09rNSJFDz6bLHj5": {}, "NgfWLHcKsrV8fu1U": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "4CPHar2KbOyWFG74", "namespace": "IL3ogUNT71x3M0Bn"}, "entitlement": {"entitlementId": "43IEha8gPfPc8tsy"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "cd6hkB2oH2g0GN5C", "itemIdentityType": "ITEM_ID", "origin": "Oculus"}, "quantity": 34, "type": "ITEM"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "1hSNQDhNoX1evUeN", "namespace": "iAj15rsBcR2fGVf7"}, "entitlement": {"entitlementId": "cAyB3GbHa5D9hgqG"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "aBjtJtW2Iz1uGwmr", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 49, "type": "ITEM"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "JrrcgOTHbDb4PSsj", "namespace": "M5lDCrcNqd7KgeSd"}, "entitlement": {"entitlementId": "xWbuWfJbj1rVTMXD"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "oYWbZHg0443xlR8Q", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 33, "type": "ITEM"}], "source": "ORDER", "transactionId": "2sWa44Bcx01fSi6t"}'
"""

result, error = do_revocation(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
