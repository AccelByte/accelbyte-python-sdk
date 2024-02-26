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

Example: '{"meta": {"aFgjawr47j6crwFl": {}, "FPy4dCp96HO7EiJQ": {}, "wRWddfCYPLs9hAvO": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Nintendo", "currencyCode": "aF1lSWLf2WigOj5j", "namespace": "jUHtgi2vWlQxyEIH"}, "entitlement": {"entitlementId": "06QgKfGRpoTr6XXn"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "ObimzlU2WHLdyzF6", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 54, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "uQVgoy65nGiNklZS", "namespace": "URHCGjB7drsJpNYk"}, "entitlement": {"entitlementId": "N9d5MUI9GN41VdsD"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "8NTl48fWHL5EiZcb", "itemIdentityType": "ITEM_ID", "origin": "Oculus"}, "quantity": 5, "type": "ITEM"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "CfZvR8fUZzjz2odS", "namespace": "3EtJ22DEUHciTsaV"}, "entitlement": {"entitlementId": "cvh5eDcUpr5QbE2X"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "YwyGLzkKOCjGHsTi", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 12, "type": "CURRENCY"}], "source": "IAP", "transactionId": "TD2nBIXGZ5RYTLcG"}'
"""

result, error = do_revocation(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
