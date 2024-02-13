import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import unselect_all_records
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = unselect_all_records(
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
