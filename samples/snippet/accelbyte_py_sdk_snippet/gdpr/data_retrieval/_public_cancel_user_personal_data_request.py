import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import public_cancel_user_personal_data_request
from accelbyte_py_sdk.api.gdpr.models import ResponseError

result, error = public_cancel_user_personal_data_request(
    request_date=request_date,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
