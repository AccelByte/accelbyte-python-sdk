import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import generate_invoice_summary
from accelbyte_py_sdk.api.platform.models import InvoiceSummary
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

result, error = generate_invoice_summary(
    end_time=end_time,
    start_time=start_time,
    feature=feature,
    item_id=item_id,
    item_type=item_type,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
