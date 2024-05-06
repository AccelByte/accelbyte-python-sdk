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

Example: '{"meta": {"FLAWbKbc8M5IN5MH": {}, "3cGhacTnpt7FSZDW": {}, "tfgaMfJvxpnD1wj9": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Steam", "currencyCode": "G4DfQoiCATciUgoH", "namespace": "XWvBiiz8n5n0igvf"}, "entitlement": {"entitlementId": "mMGRENuaNvqce2jb"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "GE5Gd7P4pHXhZcW4", "itemIdentityType": "ITEM_SKU", "origin": "Oculus"}, "quantity": 78, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "irsRZ1NoeJwPecDe", "namespace": "uZlKvmsASqeRmAtX"}, "entitlement": {"entitlementId": "9hWgZH2jXPtdy9Z8"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "qvGnaXX2c5DIs0rZ", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 74, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "Svh2v4JvmfZJspuR", "namespace": "ZAZ3OGVYHP5Sykaq"}, "entitlement": {"entitlementId": "HebWiIBiom3t7CGr"}, "item": {"entitlementOrigin": "System", "itemIdentity": "P8KGuLIOfggbCZiX", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 8, "type": "ITEM"}], "source": "ORDER", "transactionId": "VM43mCAcfrO6MoZq"}'
"""

result, error = do_revocation(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
