import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_get_user_app_entitlement_by_app_id
from accelbyte_py_sdk.api.platform.models import AppEntitlementInfo
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = public_get_user_app_entitlement_by_app_id(
    user_id=user_id,
    app_id=app_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
