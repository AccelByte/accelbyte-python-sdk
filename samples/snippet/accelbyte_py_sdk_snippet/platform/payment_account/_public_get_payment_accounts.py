import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_get_payment_accounts
from accelbyte_py_sdk.api.platform.models import PaymentAccount

result, error = public_get_payment_accounts(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
