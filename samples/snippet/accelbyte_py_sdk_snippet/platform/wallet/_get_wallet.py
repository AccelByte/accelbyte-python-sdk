import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_wallet
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import WalletInfo

result, error = get_wallet(
    wallet_id=wallet_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
