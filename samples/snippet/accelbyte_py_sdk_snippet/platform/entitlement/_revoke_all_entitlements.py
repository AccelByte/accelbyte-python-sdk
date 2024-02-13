import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import revoke_all_entitlements
from accelbyte_py_sdk.api.platform.models import BulkOperationResult

result, error = revoke_all_entitlements(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
