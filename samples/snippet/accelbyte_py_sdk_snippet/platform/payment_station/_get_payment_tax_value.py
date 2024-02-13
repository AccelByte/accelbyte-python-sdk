import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_payment_tax_value
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import TaxResult

result, error = get_payment_tax_value(
    payment_order_no=payment_order_no,
    payment_provider=payment_provider,
    zip_code=zip_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
