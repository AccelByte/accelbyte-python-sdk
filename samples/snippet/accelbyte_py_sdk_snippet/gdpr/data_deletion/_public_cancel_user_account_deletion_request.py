import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import public_cancel_user_account_deletion_request
from accelbyte_py_sdk.api.gdpr.models import ResponseError

result, error = public_cancel_user_account_deletion_request(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
