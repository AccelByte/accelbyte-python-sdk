import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_user_entitlement_histories
from accelbyte_py_sdk.api.platform.models import EntitlementHistoryInfo

result, error = get_user_entitlement_histories(
    entitlement_id=entitlement_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
