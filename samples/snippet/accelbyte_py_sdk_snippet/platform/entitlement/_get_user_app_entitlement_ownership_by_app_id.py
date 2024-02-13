import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_user_app_entitlement_ownership_by_app_id
from accelbyte_py_sdk.api.platform.models import Ownership

result, error = get_user_app_entitlement_ownership_by_app_id(
    user_id=user_id,
    app_id=app_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
