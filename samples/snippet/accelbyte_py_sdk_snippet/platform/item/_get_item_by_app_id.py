import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_item_by_app_id
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullItemInfo

result, error = get_item_by_app_id(
    app_id=app_id,
    active_only=active_only,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
