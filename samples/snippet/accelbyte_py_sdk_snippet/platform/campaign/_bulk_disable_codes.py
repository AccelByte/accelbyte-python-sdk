import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import bulk_disable_codes
from accelbyte_py_sdk.api.platform.models import BulkOperationResult

result, error = bulk_disable_codes(
    campaign_id=campaign_id,
    batch_no=batch_no,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
