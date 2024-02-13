import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_aggregate_payment_providers

result, error = get_aggregate_payment_providers(
    x_additional_headers=x_additional_headers,
)
