import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import revoke_user_entitlements
from accelbyte_py_sdk.api.platform.models import BulkOperationResult

result, error = revoke_user_entitlements(
    user_id=user_id,
    entitlement_ids=entitlement_ids,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
