import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import sync_oculus_consumable_entitlements
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import OculusReconcileResult

result, error = sync_oculus_consumable_entitlements(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
