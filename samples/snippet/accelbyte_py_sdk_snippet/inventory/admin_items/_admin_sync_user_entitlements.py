import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_sync_user_entitlements
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse

result, error = admin_sync_user_entitlements(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
