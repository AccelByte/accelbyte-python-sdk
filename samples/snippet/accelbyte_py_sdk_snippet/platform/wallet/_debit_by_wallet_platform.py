import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import debit_by_wallet_platform
from accelbyte_py_sdk.api.platform.models import DebitByWalletPlatformRequest
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PlatformWallet
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

result, error = debit_by_wallet_platform(
    request=request,
    currency_code=currency_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
