import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_user_entitlement_history
from accelbyte_py_sdk.api.platform.models import (
    UserEntitlementHistoryPagingSlicedResult,
)

result, error = public_user_entitlement_history(
    user_id=user_id,
    end_date=end_date,
    entitlement_clazz=entitlement_clazz,
    limit=limit,
    offset=offset,
    start_date=start_date,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
