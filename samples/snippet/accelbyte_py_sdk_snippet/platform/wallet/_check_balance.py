import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import check_balance
from accelbyte_py_sdk.api.platform.models import DebitByWalletPlatformRequest
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = check_balance(
    request=request,
    currency_code=currency_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
