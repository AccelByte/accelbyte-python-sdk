import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_generate_report_v4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_generate_report_v4(
    device_type=device_type,
    end_date=end_date,
    start_date=start_date,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
