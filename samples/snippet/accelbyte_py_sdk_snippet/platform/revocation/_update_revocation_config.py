import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_revocation_config
from accelbyte_py_sdk.api.platform.models import RevocationConfigInfo
from accelbyte_py_sdk.api.platform.models import RevocationConfigUpdate

"""
body:
Definition: RevocationConfigUpdate
entitlement: EntitlementRevocationConfig
Definition: EntitlementRevocationConfig
    consumable: ConsumableEntitlementRevocationConfig
    Definition: ConsumableEntitlementRevocationConfig
        enabled: bool
        strategy: str
    durable: DurableEntitlementRevocationConfig
    Definition: DurableEntitlementRevocationConfig
        enabled: bool
        strategy: str
wallet: WalletRevocationConfig
Definition: WalletRevocationConfig
    enabled: bool
    strategy: str

Example: '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}'
"""

result, error = update_revocation_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
