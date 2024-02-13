import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_get_app
from accelbyte_py_sdk.api.platform.models import AppInfo
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = public_get_app(
    item_id=item_id,
    language=language,
    region=region,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
