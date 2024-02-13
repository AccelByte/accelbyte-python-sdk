import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_get_wallet
from accelbyte_py_sdk.api.platform.models import PlatformWallet

result, error = public_get_wallet(
    currency_code=currency_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
