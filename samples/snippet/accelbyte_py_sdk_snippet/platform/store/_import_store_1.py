import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import import_store_1
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ImportStoreResult

result, error = import_store_1(
    file=file,
    store_id=store_id,
    strict_mode=strict_mode,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
