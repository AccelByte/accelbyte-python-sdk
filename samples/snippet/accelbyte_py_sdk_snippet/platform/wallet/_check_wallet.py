import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import check_wallet
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

result, error = check_wallet(
    currency_code=currency_code,
    user_id=user_id,
    origin=origin,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
