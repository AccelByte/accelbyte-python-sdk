import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_payment_tax_config
from accelbyte_py_sdk.api.platform.models import PaymentTaxConfigInfo

result, error = get_payment_tax_config(
    x_additional_headers=x_additional_headers,
)
