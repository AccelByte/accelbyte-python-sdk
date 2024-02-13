import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_payment_callback_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentCallbackConfigInfo

result, error = get_payment_callback_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
