import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_platform_wallet_config
from accelbyte_py_sdk.api.platform.models import PlatformWalletConfigInfo
from accelbyte_py_sdk.api.platform.models import PlatformWalletConfigUpdate

"""
body:
Definition: PlatformWalletConfigUpdate
allowed_balance_origins: List[str]

Example: '{"allowedBalanceOrigins": ["GooglePlay", "Xbox", "Other"]}'
"""

result, error = update_platform_wallet_config(
    platform=platform,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
