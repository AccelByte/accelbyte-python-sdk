import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import public_get_user_account_deletion_status
from accelbyte_py_sdk.api.gdpr.models import ModelsDeletionStatus
from accelbyte_py_sdk.api.gdpr.models import ResponseError

result, error = public_get_user_account_deletion_status(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
