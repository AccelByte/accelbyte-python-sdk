import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import delete_store
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import StoreInfo

result, error = delete_store(
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
