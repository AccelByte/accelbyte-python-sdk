import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_get_user_entitlements_by_ids
from accelbyte_py_sdk.api.platform.models import EntitlementInfo

result, error = public_get_user_entitlements_by_ids(
    user_id=user_id,
    available_platform_only=available_platform_only,
    ids=ids,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
