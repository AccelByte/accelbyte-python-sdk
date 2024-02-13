import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_app
from accelbyte_py_sdk.api.platform.models import FullAppInfo

result, error = get_app(
    item_id=item_id,
    active_only=active_only,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
