import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import debug_matched_payment_provider_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentProviderConfigInfo

result, error = debug_matched_payment_provider_config(
    region=region,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
