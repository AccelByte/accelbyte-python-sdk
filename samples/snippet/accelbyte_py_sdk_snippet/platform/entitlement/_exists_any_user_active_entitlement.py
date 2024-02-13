import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import exists_any_user_active_entitlement
from accelbyte_py_sdk.api.platform.models import Ownership

result, error = exists_any_user_active_entitlement(
    user_id=user_id,
    app_ids=app_ids,
    item_ids=item_ids,
    platform=platform,
    skus=skus,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
