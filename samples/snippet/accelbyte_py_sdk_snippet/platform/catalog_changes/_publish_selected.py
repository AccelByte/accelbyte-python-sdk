import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import publish_selected
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import StoreInfo

result, error = publish_selected(
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
