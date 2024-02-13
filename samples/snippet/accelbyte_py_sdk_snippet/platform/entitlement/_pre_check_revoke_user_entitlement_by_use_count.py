import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import pre_check_revoke_user_entitlement_by_use_count
from accelbyte_py_sdk.api.platform.models import EntitlementPrechekResult
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = pre_check_revoke_user_entitlement_by_use_count(
    entitlement_id=entitlement_id,
    user_id=user_id,
    quantity=quantity,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
