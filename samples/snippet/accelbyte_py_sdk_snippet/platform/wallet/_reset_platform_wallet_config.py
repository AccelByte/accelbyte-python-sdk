import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import reset_platform_wallet_config
from accelbyte_py_sdk.api.platform.models import PlatformWalletConfigInfo

result, error = reset_platform_wallet_config(
    platform=platform,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
